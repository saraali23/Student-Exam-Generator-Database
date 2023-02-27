


create or alter proc GenerateExam @examname varchar(50), @courseId int 
as

	insert into Exam (Exam_name,Exam_date) values(@examname, GETDATE())
	declare @examid int =@@IDENTITY
	--- insert true and false
	exec QuestionGenerator 3,2,@examid,@courseId
	
    --- insert mcq
	exec QuestionGenerator 5,1,@examid,@courseId
	
-----------------------------
go
create or alter proc QuestionGenerator @numQuest int,@typeQuest int, @examid int, @courseId int 
as

	insert into Qest_Exam(Qest_id,Exam_id)
	select top(@numQuest) Quest_id , @examid
	from Questions q inner join Course c
	on q.Crs_id = c.Crs_ID
	where q.Quest_type=@typeQuest and  q.Crs_id=@courseId
	order by NEWID()

-----------------------
--TESTING
exec GenerateExam 'DATA STRUCTURE 2',2

select e.Exam_name, q.question_body,q.Quest_type,q.correct_ans
from Exam e,Qest_Exam s ,Questions q 
where e.Exam_id=5 and e.Exam_id=s.Exam_id and s.Qest_id=q.Quest_id
