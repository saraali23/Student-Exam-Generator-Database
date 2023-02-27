-------------------------------Update Student Grade --------------------------
alter proc updateGrade @stdid int , @crs_id int , @newGrade float
as
	update std_crs
	set  std_crs.Grades = @newGrade 
	where  Std_id = @stdid  and Crs_id = @crs_id 

	exec updateGrade 3 ,1 , 40

select * from std_crs

-----------------------------Update student Answer------------------------------------------------------
create proc updateStdAns @stdid int , @ExamId int , @QuestId int , @stdAns varchar(20)
as
	update Std_Ans
	set  Std_Ans = @stdAns 
	where  Std_id = @stdid  and Quest_id = @QuestId 

exec updateStdAns 1 , 1 , 1 , 'a'

select * from Std_Ans

-----------------------------------Update Topic-------------------------------------------------

alter proc updateTopic  @crsId int , @topicId int , @topicName varchar(20)
as
	update Topic
	set  Topic_name = @topicName 
	where  course_id = @crsId  and Topic_id = @topicId 

exec updateTopic 1 , 1 ,'c++'
select * from Topic
-----------------------------------Update Course------------------------------------------------
alter proc updateCrs  @crsId int , @CrsName varchar(20)
as
	update Course
	set  Crs_Name = @CrsName 
	where  Crs_ID = @crsId 

exec updateCrs 1 , 'Programing'
select * from Course