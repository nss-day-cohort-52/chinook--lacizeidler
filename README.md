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
SELECT Playlist.name, COUNT(PlaylistTrack.TrackId) as TrackCount
FROM PlaylistTrack 
JOIN Track ON Track.TrackId = PlaylistTrack.TrackId 
JOIN Playlist ON Playlist.PlaylistId = PlaylistTrack.PlaylistId 
GROUP BY Playlist.Name
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
SELECT Employee.FirstName, Employee.LastName, SUM(Invoice.Total)
FROM Customer 
JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId 
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId 
WHERE InvoiceDate LIKE "2009%"
GROUP BY Customer.SupportRepId
```

## 20. Top Agent 
```
SELECT Employee.FirstName, Employee.LastName, SUM(Invoice.Total)
FROM Customer 
JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId 
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId 
GROUP BY Customer.SupportRepId
```

## 21. Sales Agent Customer Count 
```
SELECT Invoice.BillingCountry, SUM(Invoice.Total)
FROM Invoice 
GROUP BY Invoice.BillingCountry
```

## 22. Sales Per Country 
```
SELECT Invoice.BillingCountry, SUM(Invoice.Total)
FROM Invoice 
GROUP BY Invoice.BillingCountry
```

## 23. Top Country
```
SELECT Customer.Country, SUM(Invoice.Total) InvoiceTotal
FROM Customer 
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
GROUP BY Customer.Country
ORDER BY InvoiceTotal DESC
LIMIT 1
```

## 24. Top 2013 Track
```
SELECT Track.Name, COUNT(InvoiceLine.TrackId) 
FROM InvoiceLine 
JOIN Track ON Track.TrackId = InvoiceLine.TrackId 
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId 
WHERE InvoiceDate LIKE "2013%"
GROUP BY Track.TrackId
```

## 25. Top 5 Tracks 
```
SELECT Track.Name, COUNT(InvoiceLine.TrackId) TrackCount
FROM InvoiceLine 
JOIN Track ON Track.TrackId = InvoiceLine.TrackId 
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Track.TrackId
ORDER BY TrackCount DESC
LIMIT 5
```

## 26. Top 3 Artists 
```
SELECT Artist.Name, COUNT(InvoiceLine.TrackId) AS InvoiceLineTrack 
FROM InvoiceLine 
INNER JOIN Track ON InvoiceLine.TrackId = Track.TrackId 
INNER JOIN Album ON Track.AlbumId = Album.AlbumId 
INNER JOIN Artist ON Album.ArtistId = Artist.ArtistId 
GROUP BY Artist.ArtistId
ORDER BY InvoiceLineTrack DESC
LIMIT 3 
```

## 27. Top Media Type 
```
SELECT MediaType.Name, COUNT(InvoiceLine.TrackId)
FROM Track 
JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId 
JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId 
GROUP BY MediaType.Name
```


## ERD

![The ERD for Chinook](/imgs/ERD.png "This is the ERD.")

