class CommentsController < ApplicationController
	
	def create
	  @comment = Comment.new(comment_params)
	  @blog = Blog.new
	  if @comment.save
	    redirect_to @blog
	  else
	    render 'new'
	  end
	end

	private
		def comment_params
			params.require(:comment).permit(:blog_id, :body)
		end
end