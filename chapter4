/* DO NOT REMOVE*/
.mode box
.echo on
.tables

/* VIEW TABLE SCHEMAS */
.schema teaches
.schema instructor
.schema section
.schema department

/* VIEW DATA */
select * from teaches;
select * from instructor;
select * from section;
select * from department;

/* 1 - Display a list of all instructors, showing each instructor's ID and the number of sections taught. Make sure to show the number of sections as 0 for instructors who have not taught any section. Your query should use an outer join, and should not use subqueries. */

Select instructor.ID, COUNT(section.course_id)
From teaches 
JOIN instructor
on instructor.id = teaches.id
Left Outer Join section
on teaches.course_id = section.course_id
GROUP BY teaches.id;


/* 2 - Write the same query as in part a, but using a scalar subquery and not using outer join. */

select ID, name,
(select count(*)
from teaches where teaches.id = instructor.id) as 'num_secs'
from instructor; 


/* 3 - Display the list of all course sections offered in Spring 2018, along with the ID and name of each instructor teaching the section. If a section has more than one instructor, that section should appear as many times in the result as it has instructors. If a section does not have any instructor, it should still appear in the result with the instructor name set to "-". */

select section.course_id, instructor.name 
from teaches 
JOIN instructor
On teaches.id = instructor.id
right outer Join section
ON section.course_id = teaches.course_id 
Where section.semester = 'Spring' and section.year = 2018
group by section.course_id
order by section.course_id;


/* 4 - Display the list of all departments, with the total number of instructors in each department, without using subqueries. Make sure to show departments that have no instructors, and list those departments with an instructor count of zero. */

select department.dept_name, count(instructor.id)
from department LEFT JOIN instructor
on department.dept_name = instructor.dept_name
group by department.dept_name
order by department.dept_name;

/* DO NOT REMOVE*/
.exit 
