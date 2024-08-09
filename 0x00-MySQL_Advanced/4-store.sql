-- create a trigger to decrease the quantity
-- of an item when an order is placed
DELIMITER $$
CREATE TRIGGER update_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
	UPDATE items
	SET quantity = quantity - NEW.number
    WHERE name = NEW.item_name;
END$$
