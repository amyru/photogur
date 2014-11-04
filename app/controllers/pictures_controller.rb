class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
	end

	def show
		@picture = Picture.find(params[:id]) #why do we not need to integer here?
	end 

	def new

	end

	def create
		render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
		#why do you input the data backwards?
	end

end
