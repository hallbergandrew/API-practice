class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Message sent"
      redirect_to addressbooks_path
    else
      render 'new'
    end
  end

private

  def message_params
    params.require(:message).permit(:to, :from, :body, :addressbook_id)
  end
end

