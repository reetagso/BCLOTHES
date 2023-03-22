class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @request = @chatroom.request
    @user = @request.user
  end
end


# Request.find(@chatroom.request_id) == @chatroom.request
