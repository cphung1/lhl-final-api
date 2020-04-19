class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    @message = Message.where(conversation_id: params[:id])

    render json: @message
  end

  def create
    message = Message.new(body: message_params, user_id: current_user_params, conversation_id: conversation_params)

    # if @message 
    #   render json: @message
    # end

    if message.save 
      ActionCable.server.broadcast 'messages',
        body: message.body,
        user_id: message.user_id,
        conversation_id: message.conversation_id
      head :ok
    end
  end

  private 

  def message_params
    params["content"]
  end

  def current_user_params
    params["user_id"]
  end

  def conversation_params
    params["conversation_id"]
  end
end
