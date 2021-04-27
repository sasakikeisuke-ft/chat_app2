class MessagesController < ApplicationController
  def index
    @message = Message.new
    @room = Room.find(params[:room_id])
  end

  def create
    if @message.save
      redirect_to room_messages_path(@room)
    else
      render :index
    end
  end

end
