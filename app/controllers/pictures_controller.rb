class PicturesController < ApplicationController #passes data along to view
	def index
		@most_recent_pictures = Picture.most_recent_five #limit(5)for example. .order(created_at: :desc).limit(5)
		@pictures = Picture.all
	end

	def show
		@picture = Picture.find(params[:id]) #why do we not need to integer here?
	end 

	def new
		@picture = Picture.new #passing an empty object to form.
	end

	def create
		@picture = Picture.new(picture_params)
		if @picture.save
			redirect_to pictures_url
		else
			render :new
		end
	end

	def edit
		@picture = Picture.find(params[:id])
	end

	def update
		@picture = Picture.find(params[:id])

		if @picture.update_attributes(picture_params)
			redirect_to "/pictures/#{@picture.id}"
		else
			render :edit
		end
	end

	def destroy
		@picture = Picture.find(params[:id])
		@picture.destroy
		redirect_to pictures_url
	end

	private
	def picture_params
		params.require(:picture).permit(:artist, :title, :url) #why not @picture here?
	end

end
