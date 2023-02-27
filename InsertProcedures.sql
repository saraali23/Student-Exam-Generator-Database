
go
create or alter  proc InstStd @Fname varchar(50), @Lname varchar(50), @Adress varchar(50),@age int,@Dept_id int
as
	insert into Student(std_f_name,std_l_name,std_address,std_age,Dept_Id)
	values (@Fname,@Lname,@Adress,@age,@Dept_id)



--Department Insert Proc 
go
create or alter proc InstDept @name varchar(50), @Desc varchar(50), @Location varchar(50),@Manager varchar(50),@Manger_HireDate int
as
	insert into Department (Dept_name,Dept_Desc,Dept_Loaction,Dept_Manager,manager_HireDate)
	values (@name,@Desc,@Location,@Manager,@Manger_HireDate)



--Instructor Insert Proc 
go
create or alter proc InstInsc @Fname varchar(50), @Lname varchar(50), @Degree varchar(50),@Salary float,@Dept_id int
as
	insert into Instructor (Ins_F_name,Ins_L_name,Ins_Degree,salary,Dept_id)
	values (@Fname,@Lname,@Degree,@Salary,@Dept_id)




--Topic Insert Proc 
go
create or alter proc InstTopic  @TopicName varchar(50), @courseID int
as
	insert into Topic (Topic_name,course_id)
	values (@TopicName,@courseID)



--Course Insert Proc 
go
create or alter proc InstCourse  @CourseName varchar(50), @CrsDuration int
as
	insert into Course (Crs_Name,Crs_Duration)
	values (@CourseName,@CrsDuration)

--Exam Insert Proc 

go
create or alter proc InstExam @ExamName varchar(50)
as
	insert into Exam(Exam_name,Exam_date)
	values (@ExamName,GETDATE())



--Question Insert Proc 
go
create or alter proc InstQuestion @CorrectAns varchar(50),@CourseID int , @QuestionBody varchar(200)
as
	insert into Questions (correct_ans,Crs_id,question_body)
	values (@CorrectAns,@CourseID,@QuestionBody)



