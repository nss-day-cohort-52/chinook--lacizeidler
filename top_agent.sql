SELECT Employee.FirstName, Employee.LastName, SUM(Invoice.Total)
FROM Customer 
JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId 
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId 
GROUP BY Customer.SupportRepId

