create or alter proc ExamAnswers @QuestArray nvarchar(max), @AnsArray nvarchar(8), @stdid int, @examid int
as	
	declare @counter int=1, @quest int,@ans char;

	--- split question array by ','
	declare @TempTable AS table (Id int identity, questID int)
	insert into @TempTable(questID)
	SELECT [Value]  FROM STRING_SPLIT(@QuestArray,',') 

	while(@counter<9)
		begin
			select  @quest=questID from @TempTable where Id=@counter
			select @ans=SUBSTRING(@AnsArray,@counter, 1);

			exec InsertStudAns @stdid, @examid,@quest,@ans
			set @counter+=1
		end




----------------------------
go
create proc InsertStudAns @stdif int, @examid int, @questid int, @ans char
as
	insert into Std_Ans(Std_id,Exam_id,Quest_id,Std_Ans)
	values(@stdif,@examid,@questid,@ans)
-------------
---TEST-----
exec ExamAnswers '1,3,4,6,8,12,13,19','ababattf',3,4

	