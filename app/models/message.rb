class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
end

def create
  @room = Room.find(params[:room_id])
  @message = @room.messages.new(message_params)
  @message.save
end

private

def message_params
  params.require(:message).permit(:content).merge(user_id: current_user.id)
end