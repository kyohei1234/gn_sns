class AboutController < ApplicationController
	def index
    @blogs = Blog.order("created_at DESC").limit(3)
    @friends=Friend.order("created_at DESC").limit(3)
    @boards=Board.order("created_at DESC").limit(3)
    @opinions = Opinion.order("created_at DESC").limit(3)
  end
end
