class PicturesController < ApplicationController
	def index
		@pictures = [
			{
				:title =>"the old church on the coast of the White sea",
				:artist => "Sergey Ershov",
				:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
			},
			{
				:title => "Sea Power",
				:artist => "Stephen Scullion",
				:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg"
			},
			{
				:title => "into the Poppies",
				:artist => "John Wilhelm",
				:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg"
			}
		]

	end

	def show
		@pictures = [
				{
					:title =>"the old church on the coast of the White sea",
					:artist => "Sergey Ershov",
					:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
				},
				{
					:title => "Sea Power",
					:artist => "Stephen Scullion",
					:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg"
				},
				{
					:title => "into the Poppies",
					:artist => "John Wilhelm",
					:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg"
				}
			]
			@picture = @pictures[params[:id].to_i]
	end 

	def new

	end

	def create
		render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
		#why do you input the data backwards?
	end

end
