SELECT Customer.Country, SUM(Invoice.Total) InvoiceTotal
FROM Customer 
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
GROUP BY Customer.Country
ORDER BY InvoiceTotal DESC
LIMIT 1
