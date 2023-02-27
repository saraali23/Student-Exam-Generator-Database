go
create or alter proc ExamCorrection @stdid int,@examid int,@crsid int
as
	declare @grade float=0;
	exec calcGrade @stdid,@examid,@grade out
	select @grade as Grade
	exec updateGrade @stdid,@crsid,@grade

-----------------------------------------------
go
create or alter proc calcGrade @stdid int,@examid int,@grades float out
as 
	declare c1 cursor
	for select a.Std_Ans ,q.correct_ans 
		from Questions q, Std_Ans a
		where q.Quest_id=a.Quest_id and a.Std_id=@stdid
	for read only     --no update  --no modification

	declare @std char,@corr char, @correct int=0,@total float=8;
	open c1
	fetch c1 into @std,@corr

	while @@FETCH_STATUS=0
		begin
			select @std as 'Student Answer',@corr as 'Correct Answer'
			fetch c1 into @std,@corr
			if @std=@corr
				set @correct+=1
		end
	close c1
	deallocate c1
	set @gradeS =(@correct/@total)*100
	




