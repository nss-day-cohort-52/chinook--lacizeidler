SELECT InvoiceLine.InvoiceLineId, Track.Name
FROM InvoiceLine
INNER JOIN Track ON Track.TrackId = InvoiceLine.TrackId
INNER JOIN Album ON Album.AlbumId = Track.AlbumId