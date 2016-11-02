class RepliesController < ApplicationController
  def index
    @replies = Reply.all
  end

  def show
    @reply = Reply.find(params[:id])
  end

  def new
    @reply = Reply.new
    #@message.user_id = current_user.id
  end

  def create
    @user = current_user
    @message = Message.find(params[:message_id])
    @reply = Reply.new(params.require(:reply).permit(:content))
    @reply.user = @user
    @reply.message = @message
    if @reply.save
      redirect_to user_post_path(@user, @message.post)
    else
      render :new
    end
  end
end
