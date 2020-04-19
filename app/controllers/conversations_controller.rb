class ConversationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    @check_conversation = Conversation.where(sender_id: params[:id], recipient_id: params[:match_id]).exists?
    @checks_other_convo = Conversation.where(sender_id: params[:match_id], recipient_id: params[:id]).exists?

    @conversation = Conversation.where(sender_id: params[:id], recipient_id: params[:match_id])
    @other_convo =  Conversation.where(sender_id: params[:match_id], recipient_id: params[:id])

    if @check_conversation
      render json: @conversation
    elsif @checks_other_convo
      render json: @other_convo
    end 
  end


  def create
    @conversation = Conversation.create(sender_id: current_user, recipient_id: user_params)

    if @conversation
      # ActionCable.server.broadcast 'conversations',
      render json: @conversation
    else
      puts "error"
    end
  end

end
