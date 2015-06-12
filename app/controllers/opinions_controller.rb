class OpinionsController < ApplicationController

	def create
	  @opinion = Opinion.new(opinion_params)
	  if @opinion.save
	    redirect_to board_path(params[:opinion][:board_id])
	  else
	    render 'new'
	  end
	end

	private
		def opinion_params
			params.require(:opinion).permit(:board_id, :body, :user_id)
		end

end
