class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :content, presence: true
end


private

def message_params
  params.require(:message).permit(:content).merge(user_id: current_user.id)
end