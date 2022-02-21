SELECT InvoiceLine.InvoiceLineId, Track.Name, Artist.Name
FROM InvoiceLine
INNER JOIN Track ON Track.TrackId = InvoiceLine.TrackId
INNER JOIN Album ON Album.AlbumId = Track.AlbumId
INNER JOIN Artist ON Artist.ArtistId = Album.ArtistId