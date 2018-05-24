alter procedure QueryOrders
	@state nvarchar(2) = 'OH'
	as
	BEGIN
		select * from customer where state = @state order by city;
	END;
go 
exec QueryOrders oh;
go
