# Chinook - Laci Zeidler

## 1. Non USA Customers

```
SELECT FirstName, CustomerId, Country
FROM Customer 
WHERE Country != "USA"
```

## 2. Brazil Customers Only
```
SELECT * 
FROM Customer
WHERE Country = "Brazil"
```

## 3. Brazil Customers Invoices
```
SELECT Customer.FirstName, Customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Invoice 
JOIN Customer 
ON Invoice.CustomerId = Customer.CustomerId
WHERE Customer.Country = "Brazil"
```

## 4. Sales Agents Only
```
SELECT * 
FROM Employee
WHERE Title = "Sales Support Agent"
```

## 5. Unique Invoice Countries
```
SELECT DISTINCT BillingCountry
FROM Invoice 
```

## 6. Sales Agent Invoices
```
SELECT Invoice.InvoiceId, Employee.FirstName, Employee.LastName
FROM Invoice
JOIN Employee
ON  Invoice.CustomerId = Employee.EmployeeId
```

## 7. Invoice Totals
```
SELECT Customer.FirstName, Customer.LastName, Invoice.Total, Customer.Country, Employee.FirstName, Employee.LastName
FROM Customer
JOIN Invoice 
ON Customer.CustomerId = Invoice.CustomerId 
JOIN Employee
ON Customer.SupportRepId = Employee.EmployeeId
```

## 8. Total Invoices in 2009
```
SELECT COUNT(InvoiceId)
FROM Invoice
WHERE InvoiceDate LIKE "2009%"
```

## 8. Total Invoices in 2011
```
SELECT COUNT(InvoiceId)
FROM Invoice
WHERE InvoiceDate LIKE "2011%"
```

## 9. Total sales in 2009
```
SELECT SUM(total)
FROM Invoice
WHERE InvoiceDate LIKE "2009%"
```

## 9. Total sales in 2011
```
SELECT SUM(total)
FROM Invoice
WHERE InvoiceDate LIKE "2011%"
```

## 10. Invoice 37 line item count 
```
SELECT COUNT(*)
FROM InvoiceLine 
WHERE InvoiceId=37
```

## 11. Line Items Per Invoice 
```
SELECT InvoiceLineId, COUNT(Quantity)
FROM InvoiceLine
GROUP BY InvoiceId
```

## 12. Line Item Track 
```
SELECT InvoiceLine.InvoiceLineId, Track.Name
FROM InvoiceLine
INNER JOIN Track ON Track.TrackId = InvoiceLine.TrackId
INNER JOIN Album ON Album.AlbumId = Track.AlbumId
```

## 13. Line Item Track Artist 
```
SELECT InvoiceLine.InvoiceLineId, Track.Name, Artist.Name
FROM InvoiceLine
INNER JOIN Track ON Track.TrackId = InvoiceLine.TrackId
INNER JOIN Album ON Album.AlbumId = Track.AlbumId
INNER JOIN Artist ON Artist.ArtistId = Album.ArtistId
```

## 14. Country Invoices 
```
SELECT COUNT(*), Invoice.BillingCountry
FROM Invoice
GROUP BY BillingCountry
```

## 15. Playlists Track Count 
```

```

## 16. Tracks No Id 
```
SELECT Track.Name, MediaType.Name, Genre.Name
FROM Track
JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId
JOIN Genre ON Genre.GenreId = Track.GenreId
```

## 17. Invoices Lone Item Count 
```
SELECT InvoiceLine.InvoiceId, COUNT(InvoiceLine.InvoiceId)
FROM InvoiceLine
JOIN Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY InvoiceLine.InvoiceId
```

## 18. Sales Agent Total Sales 
```
SELECT Employee.FirstName, Employee.LastName, SUM(Invoice.Total)
FROM Customer 
INNER JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId 
INNER JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY Employee.EmployeeId
```

## 19. Top 2009 Agent 
```
```

## 20. Top Agent 
```
```

## 21. Sales Agent Customer Count 
```
```

## 22. Sales Per Country 
```
```

## 23. Top Country
```
```

## 24. Top 2013 Track
```
```

## 25. Top 5 Tracks 
```
```

## 26. Top 3 Artists 
```
```

## 27. Top Media Type 
```
```


## ERD

![The ERD for Chinook](/imgs/ERD.png "This is the ERD.")

