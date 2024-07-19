DROP SCHEMA IF EXISTS healthyLifeDB;
CREATE SCHEMA healthyLifeDB;


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
    customerId INT PRIMARY KEY NOT NULL,
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
(1, 'Ibuprofen', 'Relieves pain, reduces inflammation, and lowers fever.', 'Pain Relief', 'https://imgur.com/M5utthR'),
(2, 'Amoxicillin', 'An antibiotic used to treat various bacterial infections.', 'Antibiotics', 'https://imgur.com/mksWkOy'),
(3, 'Vitamin C', 'Boosts immune system and helps prevent common colds.', 'Vitamins', 'https://imgur.com/XsNamLX'),
(4, 'Aspirin', 'Used to relieve pain, reduce inflammation, and prevent blood clots.', 'Pain Relief', 'https://imgur.com/jrT2SBK'),
(5, 'Lisinopril', 'A medication used to treat high blood pressure and heart failure.', 'Cardiovascular', 'https://imgur.com/Wn4l0Sz'),
(6, 'Vicodin', 'A medication used to relieve pain.', 'Pain relief', 'https://imgur.com/2js6fKX');

INSERT INTO customer (customerId, name, email, message) VALUES
(1, 'John Doe', 'johndoe@example.com', 'Looking forward to the new products!'),
(2, 'Jane Smith', 'janesmith@example.com', 'Thank you for the health tips.'),
(3, 'Alice Johnson', 'alicej@example.com', 'Can I get more information on the new medications?'),
(4, 'Bob Brown', 'bobb@example.com', 'I appreciate the tips on staying healthy.'),
(5, 'Carol White', 'carolw@example.com', 'Will you have more products available soon?');
