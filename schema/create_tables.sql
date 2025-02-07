-- Table: Chemicals (Products)
CREATE TABLE Chemicals (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    description TEXT,
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Table: Raw Materials
CREATE TABLE Raw_Materials (
    material_id INT PRIMARY KEY AUTO_INCREMENT,
    material_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    unit_of_measurement VARCHAR(20),
    quantity_in_stock INT
);

-- Table: Suppliers
CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100) NOT NULL,
    contact_info TEXT
);

-- Table: Production Batches
CREATE TABLE Production_Batches (
    batch_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    material_id INT,
    quantity_produced INT,
    production_date DATE,
    FOREIGN KEY (product_id) REFERENCES Chemicals(product_id),
    FOREIGN KEY (material_id) REFERENCES Raw_Materials(material_id)
);

-- Table: Sales Orders
CREATE TABLE Sales_Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    order_date DATE,
    FOREIGN KEY (product_id) REFERENCES Chemicals(product_id)
);

-- Table: Customers
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    contact_info TEXT
);
