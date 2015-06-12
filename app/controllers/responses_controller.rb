class ResponsesController < ApplicationController
	def create
	  @response = Response.new(response_params)
	  @friend = Friend.new
	  if @response.save
	    redirect_to friend_path(params[:response][:friend_id])
	  else
	    render 'new'
	  end
	end

	private
		def response_params
			params.require(:response).permit(:body, :friend_id, :user_id)
		end
end
