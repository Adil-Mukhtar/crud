create database db_student

use[db_student]
create table StudentInformation
(
	StuId int identity(1,1) primary key,
	FirstName nvarchar(50),
	EmailAddress nvarchar(50)
)



create proc SP_SaveStudent 'Saad','saad@gmail.com'
@FirstName nvarchar (50),
@EmailAddress nvarchar(50)
as
begin
insert into StudentInformation(FirstName, EmailAddress)values(@FirstName,@EmailAddress)
end

create proc SP_GetStudents
as
begin
select * from StudentInformation
end

create proc SP_DeleteStudents 1
@StuId int
as
begin
delete from StudentInformation where StuId =@StuId
end


create proc SP_UpdateStudents 
@StuId int,
@FirstName nvarchar(50),
@EmailAddress nvarchar(50)
as
begin
Update StudentInformation
set FirstName = @FirstName,
EmailAddress = @EmailAddress
where StuId =@StuId
end