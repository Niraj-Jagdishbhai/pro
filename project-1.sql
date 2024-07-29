CREATE DATABASE ride_sharing;

USE ride_sharing;

CREATE TABLE drivers (
    driver_id INT AUTO_INCREMENT PRIMARY KEY,
    name_driver VARCHAR(255) NOT NULL,
    license_number VARCHAR(50) NOT NULL,
    vehicle_type VARCHAR(50),
    rating FLOAT
);

CREATE TABLE passengers (
    passenger_id INT AUTO_INCREMENT PRIMARY KEY,
    name_passenger VARCHAR(255) NOT NULL,
    phone_number int NOT NULL,
    email VARCHAR(255)
);

CREATE TABLE rides (
    ride_id INT AUTO_INCREMENT PRIMARY KEY,
    driver_id INT NOT NULL,
    passenger_id INT NOT NULL,
    start_location VARCHAR(255) NOT NULL,
    end_location VARCHAR(255) NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME,
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id),
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id)
);

INSERT INTO drivers (name_driver, license_number, vehicle_type, rating) VALUES
('Rohit', 'AB12345', 'Sedan', 4.5),
('Smith', 'CD67890', 'SUV', 4.7);

INSERT INTO passengers (name_passenger, phone_number, email) VALUES
('ABC', '0123456789', 'abc@example.com'),
('BCD', '1234567890', 'bcd@example.com');

INSERT INTO rides (driver_id, passenger_id, start_location, end_location, start_time, end_time) VALUES
(1, 1, 'Location A', 'Location B', '2024-07-26 10:00:00', '2024-07-26 10:30:00'),
(2, 2, 'Location C', 'Location D', '2024-07-26 11:00:00', '2024-07-26 11:45:00');

SELECT * FROM drivers;

SELECT * FROM passengers;

SELECT * FROM rides;
