data "spotify_search_track" "kendrick"{
    artist = "Kendrick Lamar"
}

resource "spotify_playlist" "kendrick_lamar"{
    name = "kendrick G.O.A.T"
    tracks = [data.spotify_search_track.kendrick.tracks[0].id,
    data.spotify_search_track.kendrick.tracks[1].id,
    data.spotify_search_track.kendrick.tracks[2].id]
}