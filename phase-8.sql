CREATE INDEX idx_supplier_end_date
    ON supplier (end_date);
    
CREATE INDEX idx_piece_stock
    ON piece (stock);
    
CREATE INDEX idx_customer_phone
    ON customer (telephone);
    
CREATE INDEX idx_brand_name
    ON brand (name);