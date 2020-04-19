class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    @message = Message.where(conversation_id: 1)

    render json: @message
  end

  def create
    @message = Message.create(body: message_params, user_id: current_user_params, conversation_id: conversation_params)
    
    puts params

    if @message 
      render json: @message
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
