module SongsHelper

  def song_artist(song)

    if @song.artist.nil?
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    else
      hidden_field_tag "song[artist_id]", song.artist_id
    end
  end

  def artist?
    if params[:artist_id] && Artist.exists?(params[:artist_id])
      artist = Artist.find(params[:artist_id])
      artist.name
    end
  end

end
