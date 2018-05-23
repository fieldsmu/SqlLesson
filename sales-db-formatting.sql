select c.Name,
		concat(c.city, ', ', c.state) as 'City, State',
		c.IsCorpAcct as 'Corp?',
		format(c.Creditlimit, 'C') as 'Credit Limit',
		format(o.Amount, 'C') as 'Amount',
		format(o.Date, 'D') as 'Date',
		c.Active
from [order] o
join customer c
	on o.customerid = c.id
order by o.Amount desc