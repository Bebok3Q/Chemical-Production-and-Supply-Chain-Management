SELECT * FROM raw_materials;

WITH transformed_data AS (
    SELECT 
        rw.material_id,
        rw.material_name,
        rw.category,
        rw.unit_of_measurement,
        rw.quantity_in_stock,
        c.product_name
    FROM 
        raw_materials rw
    JOIN 
        Chemicals c ON rw.material_name = c.product_name
    WHERE 
        rw.quantity_in_stock IS NOT NULL 
)

INSERT INTO Production_Batches (material_id, quantity_produced)
SELECT 
    material_id,
    quantity_in_stock
FROM 
    transformed_data;