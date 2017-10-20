class MessagesController < ApplicationController
  def create

  end

  private
  def message_params
    params.require(:message).permit(:mentor_id,:mentee_id,:sender,:content)
  end
end
