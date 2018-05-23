drop table player;
drop table team;

create table team(
	id int not null identity(1,1) primary key,
	teamname nvarchar(50) not null,
	city nvarchar(50) not null,
	state nvarchar(2) not null,
	superbowlwin bit not null default 0,
	yearsinexistence int not null default 0,
	sport nvarchar(30) not null default 'Football'
);

insert team
	(teamname, city, state, superbowlwin, yearsinexistence, sport)
	values
	('Cincinnati Bengals', 'Cincinnati', 'OH', 0, 51, 'Football');

create table player(
	id int not null identity(1, 1) primary key,
	teamid int foreign key references team(id),
	firstname nvarchar(50) not null,
	lastname nvarchar(50) not null,
	position nvarchar(50),
	number nvarchar(3),
	yearsinsport int not null default 0,
	salary decimal(10, 2)
);

go

insert player
	(teamid, firstname, lastname, position, number, yearsinsport, salary)
	values
	(1, 'Chad', 'Johnson', 'Running Back', '12', '12', 1200000);

insert player
	(teamid, firstname, lastname, position, number, yearsinsport, salary)
	values
	(1, 'A.J.', 'Green', 'Wide Receiver', '18', '8', 3400000);

insert player
	(teamid, firstname, lastname, position, number, yearsinsport, salary)
	values
	(1, 'Andy', 'Dalton', 'Quarterback', '14', '8', 3000000);

insert player
	(teamid, firstname, lastname, position, number, yearsinsport, salary)
	values
	(1, 'Billy', 'Price', 'Center', '53', '1', 400000);

insert player
	(teamid, firstname, lastname, position, number, yearsinsport, salary)
	values
	(1, 'Marcus', 'Fields', 'Running Back', '27', '7', 92000000);


select player.firstname,
		player.lastname,
		team.teamname,
		player.position,
		player.number,
		player.yearsinsport,
		format(player.salary, 'C') as 'salary',
		concat(team.city, ', ', team.state) as 'City, State',
		team.superbowlwin,
		team.yearsinexistence,
		team.sport
 from team 
 join player
	on team.id = player.teamid
order by player.salary desc;