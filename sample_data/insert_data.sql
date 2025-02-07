-- Insert sample data for Chemicals (Products)
INSERT INTO Chemicals (product_name, description, category, price) VALUES
('Acetone', 'A solvent used in many industries, including cleaning and degreasing.', 'Solvents', 12.50),
('Toluene', 'A solvent for industrial cleaning and chemical processing.', 'Solvents', 15.00),
('Methanol', 'A basic chemical used in the production of formaldehyde and other chemicals.', 'Alcohols', 10.75),
('Ethanol', 'Used as a solvent in pharmaceutical and cosmetic products.', 'Alcohols', 18.25),
('Hydrogen Peroxide', 'A bleaching agent and disinfectant.', 'Oxidizers', 7.40);

-- Insert sample data for Raw Materials
INSERT INTO Raw_Materials (material_name, category, unit_of_measurement, quantity_in_stock) VALUES
('Acetone', 'Chemical', 'Liters', 500),
('Toluene', 'Chemical', 'Liters', 300),
('Methanol', 'Chemical', 'Liters', 200),
('Ethanol', 'Chemical', 'Liters', 150),
('Hydrogen Peroxide', 'Chemical', 'Liters', 600);

-- Insert sample data for Suppliers
INSERT INTO Suppliers (supplier_name, contact_info) VALUES
('Chem Supplies Co.', '1234 Industrial Blvd, Contact: John Doe, Phone: 123-456-7890'),
('Solvent Experts Ltd.', '5678 Solvent Road, Contact: Jane Smith, Phone: 987-654-3210'),
('CleanTech Inc.', '4321 Chemical Lane, Contact: Emily Davis, Phone: 555-123-4567');

-- Insert sample data for Customers
INSERT INTO Customers (customer_name, contact_info) VALUES
('ABC Industries', '123 Manufacturing St, Contact: Sarah Lee, Phone: 555-987-6543'),
('XYZ Chemicals', '456 Chemical Ave, Contact: Mark White, Phone: 555-321-9876'),
('Global Supplies', '789 Export Blvd, Contact: Linda Green, Phone: 555-654-3210');

-- Insert sample data for Production Batches
INSERT INTO Production_Batches (product_id, material_id, quantity_produced, production_date) VALUES
(1, 1, 450, '2025-01-10'), -- Acetone batch using Acetone raw material
(2, 2, 250, '2025-01-15'), -- Toluene batch using Toluene raw material
(3, 3, 180, '2025-01-20'), -- Methanol batch using Methanol raw material
(4, 4, 120, '2025-01-22'), -- Ethanol batch using Ethanol raw material
(5, 5, 550, '2025-01-25'); -- Hydrogen Peroxide batch using Hydrogen Peroxide raw material

-- Insert sample data for Sales Orders
INSERT INTO Sales_Orders (customer_id, product_id, quantity, price, order_date) VALUES
(1, 1, 100, 12.50, '2025-01-12'), -- ABC Industries ordered 100 units of Acetone
(2, 3, 150, 10.75, '2025-01-18'), -- XYZ Chemicals ordered 150 units of Methanol
(3, 2, 80, 15.00, '2025-01-22'), -- Global Supplies ordered 80 units of Toluene
(1, 4, 120, 18.25, '2025-01-28'); -- ABC Industries ordered 120 units of Ethanol
