/*

drop table test;

create table test (
	id int not null identity(1, 1) primary key,
	name nvarchar(30) not null
);

alter table test 
	add city nvarchar(30) not null;
alter table test 
	alter column city nvarchar(30) not null;
alter table test
	add zip nvarchar(5) not null;
alter table test 
	drop column zip

insert test 
	(name, zip, city)
	values 
	('Marcus', 45069, 'West Chester')

update test set city = 'Mason' where zip = 45069;

select * from test;

*/
