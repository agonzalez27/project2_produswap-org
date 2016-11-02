class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @user = User.find(params[:user_id])
    @message = Message.new
    @reply = Reply.new 
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @user = User.find(session[:user_id])
    @post = @user.posts.new(params.require(:post).permit(:content, :summary))
    if @post.save
      redirect_to post_page_path
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params.require(:post).permit(:content, :summary))
      redirect_to post_page_path
    else
      render :edit
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    if current_user.id == @post.user.id
    @post.destroy
    redirect_to post_page_path
  else
    redirect_to post_page_path
  end
  end

end
