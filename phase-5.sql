-- 1
CREATE VIEW supplier_supplies as 
SELECT S.id as supplier_id,
		S.name as supplier_name,
        S.start_date, S.end_date, 
        S.manager_name,
        S.address,
        P.id as piece_id,
        P.model,
        P.name as piece_name,
        P.price, P.stock
FROM supplier as S JOIN piece as P ON S.id = P.supplier_id;

-- 2
CREATE VIEW custom_orders as 
SELECT C.id as C_id, C.first_name, C.last_name, C.address_province, C.address_city,
		C.telephone, P.id as Order_id, P.count, P.piece_id as piece, NULL as vehical
FROM customer as C join piece_order as P
ON C.id = P.customer
UNION
SELECT C.id as C_id, C.first_name, C.last_name, C.address_province, C.address_city,
		C.telephone, P.id as Order_id, P.count, NULL as piece_id, P.vehical_id as vehical
FROM customer as C join vehical_order as P
ON C.id = P.customer;

-- 3
CREATE VIEW car_brand_model as
SELECT V.VIN, V.color, V.gear_type, B.name as brand_name, M.name as model_name
FROM vehical as V, brand as B, model as M
WHERE V.brand = B.name and V.model = M.name;
