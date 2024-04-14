USE mydb;

DROP FUNCTION IF EXISTS divide_values;

DELIMITER //
CREATE FUNCTION divide_values(dividend FLOAT, divisor FLOAT) RETURNS FLOAT DETERMINISTIC
BEGIN
  DECLARE result FLOAT;     SET result = dividend / divisor;  END;
  RETURN result;
END//
DELIMITER ;
