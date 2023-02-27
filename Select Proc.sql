Use OnlineExam

--------------------------------------------- Student Procedure ------------------------------------------------------

-----Select * --------
create Procedure select_student
as
select * from Student

execute select_student

------- Select Student id ------

create Procedure select_student_id
as
select stdID from Student

execute select_student_id

--------------------------------------------- Course Procedure ------------------------------------------------------

-----Select * --------
create Procedure select_Course
as
select * from Course

execute select_Course

------- Select Course id ------

create Procedure select_Course_id
as
select Crs_ID from Course

execute select_Course_id

--------------------------------------------- Department Procedure ------------------------------------------------------
-----Select * --------
create Procedure select_department
as
select * from Department

execute select_department

------- Select Department id ------

create Procedure select_department_id
as
select Dept_Id from Department

execute select_department_id

---------------------------------------------Exam Procedure ------------------------------------------------------
-----Select * --------
create Procedure select_exam
as
select * from Exam

execute select_exam

------- Select Exam id ------

create Procedure select_exam_id
as
select Exam_Id from Exam

execute select_exam_id

---------------------------------------------Instructor Procedure ------------------------------------------------------
-----Select * --------
create Procedure select_instructor
as
select * from Instructor

execute select_instructor

------- Select Instructor id ------

create Procedure select_instructor_id
as
select Ins_id from Instructor

execute select_instructor_id

---------------------------------------------Ins_crs Procedure ------------------------------------------------------
-----Select * --------
create Procedure select_Ins_crs
as
select * from Ins_crs

execute select_Ins_crs

---------------------------------------------Qest_Exam Procedure ------------------------------------------------------
-----Select * --------
create Procedure select_Qest_Exam
as
select * from Qest_Exam

execute select_Qest_Exam

---------------------------------------------Questions Procedure ------------------------------------------------------
-----Select * --------
create Procedure select_Questions
as
select * from Questions

execute select_Questions

------- Select Questions id ------

create Procedure select_Questions_id
as
select Quest_id from Questions

execute select_Questions_id

---------------------------------------------QuestMultiChoices Procedure ------------------------------------------------------
-----Select * --------
create Procedure select_QuestMultiChoices
as
select * from QuestMultiChoices

execute select_QuestMultiChoices


---------------------------------------------Std_Ans Procedure ------------------------------------------------------
-----Select * --------
create Procedure select_Std_Ans
as
select * from Std_Ans

execute select_Std_Ans

---------------------------------------------std_crs Procedure ------------------------------------------------------
-----Select * --------
create Procedure select_std_crs
as
select * from std_crs

execute select_std_crs

--------------------------------------------- Topic Procedure ------------------------------------------------------

-----Select * --------
create Procedure select_Topic
as
select * from Topic

execute select_Topic

------- Select Topic id ------

create Procedure select_Topic_id
as
select Topic_id from Topic

execute select_Topic_id