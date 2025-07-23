use coursehub;

SELECT l_name, email FROM learner;

SELECT c_name, fees FROM course WHERE fees > 70000;

UPDATE course
SET fees = 70000
WHERE mode_of_learning = 'Offline' AND fees < 70000;

SELECT t_name, rating FROM trainer WHERE rating >= 4.5;

DELETE FROM learner WHERE score < 75;

SELECT l.l_name, c.c_name
FROM learner l
JOIN course c ON l.course_id = c.course_id
WHERE c.c_name = 'Python Programming';

SELECT l_name, email FROM learner WHERE email LIKE '%@coursehub.in';

UPDATE trainer SET rating = 5.0 WHERE t_name = 'Divya Patel';

SELECT trainer_id, COUNT(*) AS total_learners
FROM learner
GROUP BY trainer_id;

DELETE FROM course WHERE c_name = 'Excel for Business';

SELECT t_name, expertise FROM trainer WHERE expertise LIKE '%Data%';

SELECT ROUND(AVG(score), 2) AS average_score FROM learner;

SELECT MAX(fees) AS highest_course_fee FROM course;

