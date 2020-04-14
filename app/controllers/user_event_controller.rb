class UserEventController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    @user_event = UserEvent.where(user_id: 1).pluck(:event_id)
    @events = Event.find(@user_event)
    render json: @events
  end

  def create
    user_event = UserEvent.create(event_id: event_params, user_id: user_params)
    if user_event 
      render json: user_event
    else 
      puts "error"
    end
  end

  def destroy
  end

  private
  def event_params
    params["data"]["event_id"]
  end

  def user_params
    params["data"]["user_id"]
  end
end
