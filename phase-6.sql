ALTER TABLE vehical
ADD is_sold BIT default 0;

UPDATE vehical
SET is_sold = 1
WHERE vehical.VIN in (SELECT vehical_id FROM vehical_order);

---------------------------------------

START TRANSACTION;

SET @NotSoldVIN = (SELECT VIN
FROM vehical 
WHERE VIN not in (SELECT vehical_id FROM vehical_order)
LIMIT 1);

INSERT INTO `db_project`.`vehical_order`
(`customer`, `count`, `vehical_id`)
VALUES ("555474050010", 1, @NotSoldVIN);

UPDATE vehical
SET is_sold = 1
WHERE vehical.VIN = @NotSoldVIN;

COMMIT;
-- ROLLBACK;
---------------------------------------
START TRANSACTION;

INSERT INTO `db_project`.`piece_order`
(`customer`, `count`, `piece_id`)
VALUES
("123456781011", 2, 3);

SET @cnt = (SELECT stock FROM piece WHERE id = 3);
UPDATE piece
SET stock =  @cnt - 1
WHERE id = 3;

COMMIT;