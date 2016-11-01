class PostPageController < ApplicationController
  def index
    @posts = Post.all
  end

  
end
