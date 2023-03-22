-- insert --
INSERT INTO `db_project`.`customer`
(`id`,
`first_name`,
`last_name`,
`address_province`,
`address_city`,
`address_street`,
`telephone`)
VALUES
("123456781011",
"sherlock",
"holmes",
"London",
"London",
"212 Baker Street",
"+44796268462");

-- order --

INSERT INTO `db_project`.`vehical_order`
(`id`,
`customer`,
`count`,
`vehical_id`)
VALUES
(3,
"123456781011",
1,
"98743106");

-- update -- 
UPDATE `db_project`.`customer` SET `telephone` = '+44734278008' WHERE (`id` = '123456781011');

-- delete --
SET SQL_SAFE_UPDATES = 0;

DELETE FROM customer
WHERE id not in (SELECT customer FROM vehical_order 
				UNION
				SELECT customer FROM piece_order);