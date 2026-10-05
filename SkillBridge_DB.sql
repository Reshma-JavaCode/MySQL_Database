create database SkillBridge;
use SkillBridge;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    mobile VARCHAR(15) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);
select * from users;

-- skill table
CREATE TABLE skills
(
    skill_id INT AUTO_INCREMENT PRIMARY KEY,
    skill_name VARCHAR(100) NOT NULL UNIQUE,
    description VARCHAR(500)
);

INSERT INTO skills (skill_name, description)
VALUES
('Java', 'Learn Core Java concepts and programming'),
('JDBC', 'Learn Java database connectivity'),
('Servlets', 'Learn server-side Java development'),
('JSP', 'Learn Java web development using JSP'),
('MySQL', 'Learn database and SQL concepts'),
('HTML/CSS/Bootstrap', 'Learn frontend web development');

select * from skills;


CREATE TABLE questions
(
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    skill_id INT NOT NULL,
    question_text VARCHAR(500) NOT NULL,
    option_a VARCHAR(200) NOT NULL,
    option_b VARCHAR(200) NOT NULL,
    option_c VARCHAR(200) NOT NULL,
    option_d VARCHAR(200) NOT NULL,
    correct_answer CHAR(1) NOT NULL,

    FOREIGN KEY (skill_id)
    REFERENCES skills(skill_id)
);

INSERT INTO questions
(skill_id, question_text, option_a, option_b, option_c, option_d, correct_answer)
VALUES

(1, 'Which keyword is used to inherit a class in Java?',
 'implements', 'extends', 'inherits', 'super', 'B'),

(1, 'Which method is the entry point of a Java program?',
 'start()', 'run()', 'main()', 'execute()', 'C'),

(1, 'Which keyword is used to create an object in Java?',
 'class', 'new', 'object', 'create', 'B'),

(2, 'What does JDBC stand for?',
 'Java Database Connectivity',
 'Java Data Connection',
 'Java Database Control',
 'Java Data Communication',
 'A'),

(2, 'Which interface is commonly used to execute SQL statements?',
 'Connection', 'ResultSet', 'Statement', 'Driver',
 'C'),

(3, 'Which method is commonly used to handle GET requests in HttpServlet?',
 'doPost()', 'doGet()', 'service()', 'getRequest()',
 'B'),

(3, 'Which package contains HttpServlet?',
 'java.sql',
 'java.util',
 'jakarta.servlet.http',
 'java.servlet',
 'C'),

(4, 'Which JSP tag is used to write Java code inside a JSP page?',
 '<% %>', '<%= %>', '<%! %>', '<%-- --%>',
 'A'),

(5, 'Which command is used to retrieve data from a MySQL table?',
 'INSERT', 'UPDATE', 'SELECT', 'DELETE',
 'C'),

(5, 'Which clause is used to filter rows in SQL?',
 'ORDER BY', 'WHERE', 'GROUP BY', 'FROM',
 'B');
 select * from questions;

CREATE TABLE user_progress
(
    progress_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    skill_id INT NOT NULL,
    questions_attempted INT DEFAULT 0,
    questions_correct INT DEFAULT 0,

    FOREIGN KEY (user_id)
    REFERENCES users(user_id),

    FOREIGN KEY (skill_id)
    REFERENCES skills(skill_id)
);
select * from user_progress;