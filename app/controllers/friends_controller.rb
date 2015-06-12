class FriendsController < ApplicationController

	def index
		@friends=Friend.all
	end

	def new
		@friend = Friend.new
		@friends=Friend.all
	end

	def edit
		@friend = Friend.find(params[:id])
	end

	def show
		@friend = Friend.find(params[:id])
		@friends = Friend.all.order("created_at DESC").limit(5)	
		@responses = @friend.responses
	end

	def create
		@friend = Friend.new(friend_params)
		file = params[:friend][:image]
		@friend.set_image(file)
		@friend.save
		redirect_to @friend
	end

	def update
		file = params[:friend][:image]
		@friend.set_image(file)
	end

	private

	def set_friend
		@friend = Friend.find(params[:id])
	end

	def friend_params
		params.require(:friend).permit(:title, :body, :image)
	end
end