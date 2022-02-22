SELECT Playlist.name, COUNT(PlaylistTrack.TrackId) as TrackCount
FROM PlaylistTrack 
JOIN Track ON Track.TrackId = PlaylistTrack.TrackId 
JOIN Playlist ON Playlist.PlaylistId = PlaylistTrack.PlaylistId 
GROUP BY Playlist.Name
