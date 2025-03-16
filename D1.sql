CREATE DATABASE ServiceDB;
USE ServiceDB;

-- Creating Users Table
CREATE TABLE users (
    userId INT AUTO_INCREMENT PRIMARY KEY,
    userName VARCHAR(100),
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Creating Services Table
CREATE TABLE services (
    serviceId INT AUTO_INCREMENT PRIMARY KEY,
    seniorNumber INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    programs TEXT
);

-- Creating Contact Table
CREATE TABLE contact (
    contactId INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    message TEXT
);

-- Creating Cart Table
CREATE TABLE cart (
    cartId INT AUTO_INCREMENT PRIMARY KEY,
    userId INT,
    serviceId INT,
    price DECIMAL(10,2),
    paymentStatus ENUM('Pending', 'Completed') DEFAULT 'Pending',
    contactDetails TEXT,
    FOREIGN KEY (userId) REFERENCES users(userId),
    FOREIGN KEY (serviceId) REFERENCES services(serviceId)
);

-- Inserting Data into Users Table
INSERT INTO users (email, password) VALUES
('gautam22187@gmail.com', '12345678'),
('hariom22193@gmail.com', 'user1234'),
('guruvender@gmail.com', 'user4567');
