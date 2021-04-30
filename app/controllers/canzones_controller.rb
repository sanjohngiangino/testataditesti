class CanzonesController < ApplicationController

  def new
  
  end

  def create
  	id_song = params[:song_id]
  	user_id = session[:user_id]
  	@song = Song.find(id_song)
  	@canzone = @song.canzones.create!(:testos => params[:canzone][:testos],:songgoer_id => user_id)
  	redirect_to songs_path 
  end

  def destroy
  end
end
