class UserEventController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    puts "1st Test"
    puts params
    puts "2ND TEST"
    puts params["data"]
    @user_event = UserEvent.where(user_id: params["id"]).pluck(:event_id)
    @events = Event.find(@user_event)
    render json: @events
  end

  def create
    # event = Event.find(params[:id])
    # user1 = User.find(1)
    # user1.events << event
    # user1.save

    user_event = UserEvent.create(event_id: event_params, user_id: user_params)
    if user_event 
      render json: user_event
    else 
      puts "error"
    end
  end
  
  def new 
    @user_event = UserEvent.new
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
