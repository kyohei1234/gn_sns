class OpinionsController < ApplicationController

	def create
	  @opinion = Opinion.new(opinion_params)
	  @board = Board.new
	  if @opinion.save
	    redirect_to @board
	  else
	    render 'new'
	  end
	end

	private
		def opinion_params
			params.require(:opinion).permit(:board_id, :body, :name)
		end

end
