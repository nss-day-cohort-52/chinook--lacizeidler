SELECT Customer.FirstName, Customer.LastName, Invoice.Total, Customer.Country, Employee.FirstName, Employee.LastName
FROM Customer
JOIN Invoice 
ON Customer.CustomerId = Invoice.CustomerId 
JOIN Employee
ON Customer.SupportRepId = Employee.EmployeeId
