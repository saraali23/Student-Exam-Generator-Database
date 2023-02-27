---REPORTS----


---MARIAM-----
--1) Report that returns the students information according to Department No parameter.
GO
create or alter proc REP1_StudentInformation @deptId int
as
	exec select_StudentDept @deptId


--exec REP1_StudentInformation 2
-------------------------------------

--2) Report that takes the student ID and returns the grades of the student in all courses. %
GO
create or alter proc REP2_std_Grades @std_id int 
as 
	exec select_StudentGrades @std_id
--exec REP2_std_Grades 1

--------------------------------------------------
----HASSAN----

--3)	Report that takes the instructor ID and returns the name of the courses that he teaches and the number of student per course.----------
GO
create or alter proc REP3_Instructor_Course @ins_id int
as
	exec select_InstCourses @ins_id 

--exec REP3_Instructor_Course 1
-----------------------------------------------------
--4) Report that takes course ID and returns its topics  --------------------------------
GO
create or alter proc REP4_Course_Topic @crs_id int
as
	exec select_CourseTopics  @crs_id

--exec REP4_Course_Topic 2

------------------------------------------------
-----------REEM-------------------------------
--5) Report that takes exam number and returns the Questions in it and choices [freeform report]

GO
create  or alter proc REP5_ExamChoices @Exam_id int
as 
	
	SELECT Questions.question_body, QuestMultiChoices.ChoiceVal
	FROM   Exam INNER JOIN
				 Qest_Exam ON Exam.Exam_id = Qest_Exam.Exam_id INNER JOIN
				 Questions ON Qest_Exam.Qest_id = Questions.Quest_id INNER JOIN
				 QuestMultiChoices ON Questions.Quest_id = QuestMultiChoices.Quest_id


	where @Exam_id=Exam.Exam_id
	--true and false
	union all
	select * from Create_TrueAndFalse(@Exam_id)
	
	




go
create or alter  function Create_TrueAndFalse  (@examid int)
returns @table table
		(
		 body varchar(200), 
		 choice nvarchar(200)
		)
	as
	begin
	
	declare c1 cursor
	for  (select q.question_body
		from Qest_Exam e, Questions q 
		where  e.Qest_id=q.Quest_id and q.Quest_type='2' and e.Exam_id=@examid)

	for read only     --no update  --no modification
	declare @questBodey varchar(200)
	open c1
	fetch c1 into @questBodey 

	while @@FETCH_STATUS=0
		begin
			insert into @table
			values (@questBodey,'True'),(@questBodey,'False')
			fetch c1 into @questBodey
			
		end
	close c1
	deallocate c1
	return
	end
	


	



-----------------------------------------------

--6) Report that takes exam number and the student ID then returns the Questions in this exam with the student answers. 

GO
create or alter proc  REP6_ExamStudAnswers @Exam_id int,@Stdid int
as 
SELECT Std_Ans.Std_Ans, Questions.question_body
FROM   Questions INNER JOIN
             Std_Ans ON Questions.Quest_id = Std_Ans.Quest_id
where   @Exam_id =Std_Ans.Exam_id and @Stdid=Std_Ans.Std_id

-----------------------------------------------------