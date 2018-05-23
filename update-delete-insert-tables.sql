/*
insert customer
(name, city, state, iscorpacct, creditlimit)
values
('company', 'cincinnati', 'OH', 0, 777777);

insert [order]
(date, amount, customerid)
values
('2017-12-31', 7000, 8)

insert [order]
(date, amount, customerid)
values
('2017-11-30', 7500, 8)

delete from [order] where amount = 14000

update [order] 
	set
		[order].amount = [order].amount * 2
	where 
		[order].amount = 7000

update [order] 
	set 
		[order].amount = [order].amount * 2
	where 
		[order].amount = 7500
*/

select * from [order] join customer on [order].customerid = customer.id;