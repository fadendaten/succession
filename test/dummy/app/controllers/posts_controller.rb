class PostsController < ApplicationController

  def index
    @posts = Post.all.sort_by{|p| -p.rank}
  end

end

