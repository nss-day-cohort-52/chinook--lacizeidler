SELECT Employee.FirstName, Employee.LastName, SUM(Invoice.Total)
FROM Customer 
INNER JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId 
INNER JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY Employee.EmployeeId
