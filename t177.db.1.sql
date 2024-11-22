SELECT CONCAT(course_name, ' - ', semester) AS course_info
FROM courses;

SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_day = 'Friday';

SELECT assignment_id, assignment_name, due_date
FROM assignments
WHERE due_date > CURRENT_DATE;

SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

SELECT course_id, course_name
FROM courses
WHERE LENGTH(course_name) = (SELECT MAX(LENGTH(course_name)) FROM courses);

SELECT UPPER(course_name) AS course_name_upper
FROM courses;

SELECT assignment_name
FROM assignments
WHERE due_date LIKE '%-09-%';

SELECT assignment_id, assignment_name
FROM assignments
WHERE due_date IS NULL;
