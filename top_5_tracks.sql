SELECT Track.Name, COUNT(InvoiceLine.TrackId) TrackCount
FROM InvoiceLine 
JOIN Track ON Track.TrackId = InvoiceLine.TrackId 
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Track.TrackId
ORDER BY TrackCount DESC
LIMIT 5
