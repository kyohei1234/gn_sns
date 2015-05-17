class AboutController < ApplicationController
	def index
    @blogs = Blog.limit(3)
    @friends=Friend.limit(3)
    @boards=Board.limit(3)
    @opinions = Opinion.order("created_at DESC").limit(3)
  end
end
