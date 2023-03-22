CREATE ASSERTION no_piece CHECK (0 < ALL(
SELECT stock
FROM piece);

CREATE ASSERTION no_piece CHECK (unique(
SELECT vehical_id
FROM vehical_order);

CREATE TRIGGER asser1_before AFTER UPDATE ON test1
  FOR EACH ROW BEGIN
	  SELECT stock FROM piece
		IF stock != 0 THEN
			INSERT INTO stop_action (1, 'Assert Failure');
		END IF;
	  END;