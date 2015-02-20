class ResponsesController < ApplicationController
	def create
	  @response = Response.new(response_params)
	  @friend = Friend.new
	  if @response.save
	    redirect_to @friend
	  else
	    render 'new'
	  end
	end

	private
		def response_params
			params.require(:response).permit(:title, :body, :friend_id)
		end
end
