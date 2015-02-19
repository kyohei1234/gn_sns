class CommentsController < ApplicationController
	
	def create
	  @comment = Comment.new(comment_params)
	  @blog = Blog.new
	  if @comment.save
	    # @userはuser_path(@user) に自動変換される
	    redirect_to @blog
	  else
	    # ValidationエラーなどでDBに保存できない場合 new.html.erb を再表示
	    render 'new'
	  end
	end

	private
		def comment_params
			params.require(:comment).permit(:blog_id, :body)
		end
end