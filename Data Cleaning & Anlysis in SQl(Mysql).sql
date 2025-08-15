create database tableau_project;

use tableau_project;

select * from depression_student;


select Gender,count(*) from depression_student
group by Gender;

SET SQL_SAFE_UPDATES = 0;

update depression_student
set Gender = 'F' where Gender = 'Female';

update depression_student
set Gender = 'M' where Gender = 'Male';

select * from depression_student
where Gender is null;

select * from depression_student
where Gender = '';

select * from depression_student;


select Age, count(*) count from depression_student
group by Age
order by Age desc;

alter table depression_student
add Age_Group varchar(50);

select * from depression_student;

update depression_student
set age_group = 
case when age between 18 and 24 then 'A1'
else case when age between 25 and 30 then 'A2'
else 'A3' end end;

select age_group, count(*) from depression_student
group by age_group
order by age_group asc;

select * from INFORMATION_SCHEMA.columns where table_name
 like 'depression_student';

SELECT Academic_Pressure, COUNT(*) AS depression_student
FROM depression_student
GROUP BY Academic_Pressure;

SELECT Study_Satisfaction, COUNT(*) AS depression_student
FROM depression_student
GROUP BY Study_Satisfaction;

SELECT Sleep_Duration, COUNT(*) AS depression_student
FROM depression_student
GROUP BY Sleep_Duration;

SELECT Dietary_Habits, COUNT(*) AS depression_student
FROM depression_student
GROUP BY Dietary_Habits;

SELECT Have_you_ever_had_suicidal_thoughts, COUNT(*) AS depression_student
FROM depression_student
GROUP BY Have_you_ever_had_suicidal_thoughts;

SELECT Study_Hours, COUNT(*) AS depression_student
FROM depression_student
GROUP BY Study_Hours;

SELECT Financial_Stress, COUNT(*) AS depression_student
FROM depression_student
GROUP BY Financial_Stress;

SELECT Family_History_of_Mental_Illness, COUNT(*) AS depression_student
FROM depression_student
GROUP BY Family_History_of_Mental_Illness;

SELECT Depression, COUNT(*) AS depressio_student
FROM depression_student
GROUP BY Depression;

SELECT Age_Group, COUNT(*) AS depressio_student
FROM depression_student
GROUP BY Age_Group;

select * from depression_student;

ALTER TABLE depression_student
ADD Index_Column INT AUTO_INCREMENT PRIMARY KEY;

select * from INFORMATION_SCHEMA.columns where TABLE_NAME like 'depression_student';

UPDATE depression_student
SET depression = CASE
  WHEN LOWER(TRIM(depression)) IN ('yes','y','true','1') THEN '1'
  WHEN LOWER(TRIM(depression)) IN ('no','n','false','0')  THEN '0'
  ELSE depression
END;

UPDATE depression_student
SET depression = 'Yes'
WHERE depression = '1';

UPDATE depression_student
SET depression = 'No'
WHERE depression = '0';

select * from depression_student;

SET SQL_SAFE_UPDATES = 0;


ALTER TABLE depression_student
MODIFY COLUMN depression VARCHAR(100);

select depression, count(*) from depression_student group by depression;