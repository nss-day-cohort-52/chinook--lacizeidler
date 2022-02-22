SELECT MediaType.Name, COUNT(InvoiceLine.TrackId)
FROM Track 
JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId 
JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId 
GROUP BY MediaType.Name

