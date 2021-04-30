
class SongsController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	def index
		@all = Song.all
		#render json: Movie.all
	end
	
	def show
		id = params[:id]
		if Song.exists?(id)
			@song = Song.find(id)
		else 
			render html: 'Song does not exist'
		end
	end
	
	def new
	
	end
	
	def create
		p = params.require(:song).permit(:title,:artist,:album,:genre,:release_date)
		#title = params[:movie].require(:title)
		#rating = params[:movie][:rating]
		#release_date = params[:movie].[:release_date]
		Song.create(p)
		#render json: params[:movie]
		redirect_to songs_path
	end
	
	def destroy
		Song.find(params[:id]).destroy
		#id = params[:id]
		#if Movie.exists?(id)
		#	Movie.find(id).destroy
		#else 
		#	render html: 'Movie does not exist'
		#end
		#render json: 'Movie numero '+id+' distrutto'
		redirect_to songs_path
	end
	
	def edit
		@song = Song.find(params[:id])
	end
	
	def update
		Song.find(params[:id]).update(params[:song].permit(:title,:artist,:album,:genre,:release_date))
		redirect_to songs_path
	end

end

