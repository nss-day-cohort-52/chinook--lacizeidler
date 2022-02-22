SELECT Artist.Name, COUNT(InvoiceLine.TrackId) AS InvoiceLineTrack 
FROM InvoiceLine 
INNER JOIN Track ON InvoiceLine.TrackId = Track.TrackId 
INNER JOIN Album ON Track.AlbumId = Album.AlbumId 
INNER JOIN Artist ON Album.ArtistId = Artist.ArtistId 
GROUP BY Artist.ArtistId
ORDER BY InvoiceLineTrack DESC
LIMIT 3 

