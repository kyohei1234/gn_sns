class CommentsController < ApplicationController
	
	def create
	  @comment = Comment.new(comment_params)
	  if @comment.save
	    redirect_to blog_path(comment_params[:blog_id])
	  else
	    render 'new'
	  end
	end

	private
		def comment_params
			params.require(:comment).permit(:blog_id, :body)
		end
end