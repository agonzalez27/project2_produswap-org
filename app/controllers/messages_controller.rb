class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
    #@message.user_id = current_user.id
  end

  def create
    @user = current_user
    @post = Post.find(params[:post_id])
    @message = Message.new(params.require(:message).permit(:content, :recipient))
    @message.user = @user
    @message.post = @post
    if @message.save
      redirect_to user_post_path(@user, @post)
    else
      render :new
    end
  end

  # def update
  #   @message = Message.find(params[:id])
  #
  #   if @message.update_attributes(params.require(:message).permit(:content))
  #     redirect_to user_posts_path
  #   else
  #     render :edit
  #   end
  # end

  # def edit
  #   @message = Message.find(params[:id])
  # end
  #
  # def destroy
  #   @message = Message.find(params[:id])
  #   @message.destroy
  #   redirect_to user_posts_path
  # end
end
