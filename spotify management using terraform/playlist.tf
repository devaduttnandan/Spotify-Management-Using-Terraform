data "spotify_search_track" "Juice_Wrld" {
  artist = "Juice Wrld"
}
resource "spotify_playlist" "playlist" {
  name = "Juice G.O.A.T"

  tracks = [
    data.spotify_search_track.Juice_Wrld.tracks[0].id,
    data.spotify_search_track.Juice_Wrld.tracks[1].id,
    data.spotify_search_track.Juice_Wrld.tracks[2].id,
  ]
}

data "spotify_search_track" "imported_playlist" {
  artist = "The Weeknd"
  limit = 10
}


resource "spotify_playlist" "trial" {
  name   = "hiphop+++"
  tracks = [for track in data.spotify_search_track.imported_playlist.tracks : track.id]
}

