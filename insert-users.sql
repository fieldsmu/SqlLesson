/*
delete from purchaserequest where justification = 'justification';
delete from [User] where firstname = 'firstname' or username = 'fieldsmu';
delete from product;
delete from vendor;
*/

insert [User]
		(username, password, firstname, lastname, phone, email, isreviewer, isadmin, active)
		values
		('fieldsmu', 'password', 'marcus', 'fields', '513-000-0000', 'fieldsmu@gmail.com', 1, 1, 1);

declare @userid int;
select @userid = id from [User] where username = 'fieldsmu';

insert into purchaserequest
		(userid, description, justification, deliverymode, status, total, active, reasonforrejection)
		values
		(@userid, 'description1', 'justification', 'deliverymode', 'status', 99.99, 1, 'reasonforrejection');
insert into purchaserequest
		(userid, description, justification, deliverymode, status, total, active, reasonforrejection)
		values
		(@userid, 'description2', 'justification', 'deliverymode', 'status', 99.99, 1, 'reasonforrejection');
insert into purchaserequest
		(userid, description, justification, deliverymode, status, total, active, reasonforrejection)
		values
		(@userid, 'description3', 'justification', 'deliverymode', 'status', 99.99, 1, 'reasonforrejection');

select * from [User];
select * from PurchaseRequest;
go

declare @vendorid int;
select @vendorid = id from vendor where code = 'AMAZ'
insert into product 
	(vendorid, partnumber, name, price, unit, photopath, active)
	values
	(@vendorid, 'Echo', 'Amazon Echo', 99.99, 'Each', null, 1);

go