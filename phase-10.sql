
CREATE TABLE `brand_logs` (
	`id` int PRIMARY KEY AUTO_INCREMENT,
    `brand_id` int,
     `old_name` varchar(20),
     `new_name` varchar(20),
     `changed_at` TIMESTAMP DEFAULT now()
);

CREATE TRIGGER brand_insertion    
    AFTER INSERT
	ON brand FOR EACH ROW    
         BEGIN    
			INSERT INTO `db_project`.`brand_logs`
			(`brand_id`, `old_name`, `new_name`, `changed_at`)
			VALUES
			(NEW.id, NULL, NEW.name, now());
		END;
    
CREATE TRIGGER brand_update
    AFTER UPDATE
         ON brand FOR EACH ROW    
         BEGIN    
			INSERT INTO `db_project`.`brand_logs`
			(`brand_id`, `old_name`, `new_name`, `changed_at`)
			VALUES
			(NEW.id, OLD.name, NEW.name, now());
		END;
        
CREATE TRIGGER brand_deletion  
    AFTER INSERT
         ON brand FOR EACH ROW    
         BEGIN    
		 END;
        