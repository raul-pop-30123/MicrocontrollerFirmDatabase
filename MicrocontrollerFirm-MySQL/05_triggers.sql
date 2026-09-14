USE MicrocontrollerFirm;

DELIMITER $$

CREATE TRIGGER trg_DefaultCategoryDescription
BEFORE INSERT ON Categories
FOR EACH ROW
BEGIN
    IF NEW.Description IS NULL THEN
        SET NEW.Description = 'UNKNOWN';
    END IF;
END$$

DELIMITER ;
