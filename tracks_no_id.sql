SELECT Track.Name, MediaType.Name, Genre.Name
FROM Track
JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId
JOIN Genre ON Genre.GenreId = Track.GenreId