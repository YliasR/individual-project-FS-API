DROP SCHEMA IF EXISTS healthyLifeDB;
CREATE SCHEMA healthyLifeDB;

USE healthyLifeDB;

DROP TABLE IF EXISTS healthTips;
DROP TABLE IF EXISTS newProducts;
DROP TABLE IF EXISTS customer;

CREATE TABLE healthTips (
    id INT PRIMARY KEY NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE newProducts (
    id INT PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    medicationType VARCHAR(255) NOT NULL,
    image VARCHAR(255) NOT NULL
);

CREATE TABLE customer (
    customerId INT AUTO_INCREMENT PRIMARY KEY,  -- Added AUTO_INCREMENT here
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    message TEXT NOT NULL
);

INSERT INTO healthTips (id, title, description) VALUES
(1, 'Stay Hydrated', 'Drink plenty of water throughout the day to stay hydrated and maintain good health.'),
(2, 'Get Enough Sleep', 'Make sure to get 7-8 hours of quality sleep each night to support your overall well-being.'),
(3, 'Eat a Balanced Diet', 'Include a variety of fruits, vegetables, whole grains, and lean proteins in your daily meals for optimal nutrition.'),
(4, 'Exercise Regularly', 'Engage in physical activity for at least 30 minutes a day to improve your fitness and overall health.'),
(5, 'Practice Stress Management', 'Find healthy ways to manage stress, such as meditation, deep breathing exercises, or engaging in hobbies.'),
(6, 'Maintain Good Posture', 'Pay attention to your posture while sitting and standing to prevent back and neck pain.'),
(7, 'Limit Sugar Intake', 'Reduce your consumption of sugary foods and drinks to maintain a healthy weight and prevent dental issues.'),
(8, 'Practice Good Oral Hygiene', 'Brush your teeth twice a day, floss regularly, and visit your dentist for check-ups to keep your teeth and gums healthy.'),
(9, 'Take Breaks from Screen Time', 'Give your eyes and mind a break by taking regular breaks from prolonged screen time, especially when working or studying.');

INSERT INTO newProducts (id, name, description, medicationType, image) VALUES
(1, 'Ibuprofen', 'Relieves pain, reduces inflammation, and lowers fever.', 'Pain Relief', 'https://i.imgur.com/M5utthR.jpg'),
(2, 'Amoxicillin', 'An antibiotic used to treat various bacterial infections.', 'Antibiotics', 'https://i.imgur.com/mksWkOy.jpg'),
(3, 'Vitamin C', 'Boosts immune system and helps prevent common colds.', 'Vitamins', 'https://i.imgur.com/hJMlmgI.jpeg'),
(4, 'Aspirin', 'Used to relieve pain, reduce inflammation, and prevent blood clots.', 'Pain Relief', 'https://i.imgur.com/jrT2SBK.jpg'),
(5, 'Lisinopril', 'A medication used to treat high blood pressure and heart failure.', 'Cardiovascular', 'https://i.imgur.com/Wn4l0Sz.png'),
(6, 'Vicodin', 'A medication used to relieve pain.', 'Pain relief', 'https://i.imgur.com/2js6fKX.png');

INSERT INTO customer (name, email, message) VALUES
('John Doe', 'johndoe@example.com', 'Looking forward to the new products!'),
('Jane Smith', 'janesmith@example.com', 'Thank you for the health tips.'),
('Alice Johnson', 'alicej@example.com', 'Can I get more information on the new medications?'),
('Bob Brown', 'bobb@example.com', 'I appreciate the tips on staying healthy.'),
('Carol White', 'carolw@example.com', 'Will you have more products available soon?');
('Carol White', 'carolw@example.com', 'Will you have more products available soon?');