use coursehub;

SELECT course_id, COUNT(*) AS total_learners
FROM learner
GROUP BY course_id;

SELECT course_id, ROUND(AVG(score), 2) AS average_score
FROM learner
GROUP BY course_id;

SELECT expertise, SUM(YOE) AS total_experience
FROM trainer
GROUP BY expertise;

SELECT expertise, ROUND(AVG(rating), 1) AS avg_rating
FROM trainer
GROUP BY expertise;

SELECT mode_of_learning, SUM(fees) AS total_fees
FROM course
GROUP BY mode_of_learning;

SELECT expertise, COUNT(*) AS trainer_count
FROM trainer
GROUP BY expertise;

SELECT trainer_id, COUNT(*) AS total_learners
FROM learner
GROUP BY trainer_id;

SELECT trainer_id, ROUND(AVG(score), 2) AS avg_score
FROM learner
GROUP BY trainer_id
HAVING COUNT(*) > 1;

SELECT mode_of_learning, AVG(fees) AS avg_fee
FROM course
GROUP BY mode_of_learning
ORDER BY avg_fee DESC
LIMIT 1;

SELECT trainer_id, COUNT(DISTINCT course_id) AS unique_courses
FROM learner
GROUP BY trainer_id;
