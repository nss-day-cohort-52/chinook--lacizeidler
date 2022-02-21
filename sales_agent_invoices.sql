SELECT Invoice.InvoiceId, Employee.FirstName, Employee.LastName
FROM Invoice
JOIN Employee
ON  Invoice.CustomerId = Employee.EmployeeId
