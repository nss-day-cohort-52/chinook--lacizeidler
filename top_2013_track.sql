SELECT Track.Name, COUNT(InvoiceLine.TrackId) 
FROM InvoiceLine 
JOIN Track ON Track.TrackId = InvoiceLine.TrackId 
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId 
WHERE InvoiceDate LIKE "2013%"
GROUP BY Track.TrackId