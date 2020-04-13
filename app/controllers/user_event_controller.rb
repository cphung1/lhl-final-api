class UserEventController < ApplicationController

  def show
    @user_event = UserEvent.where(user_id: 1)
    render json: @user_event
  end

  def create
    event = Event.find(params[:id])
    user1 = User.find(1)

    user1.events << event

    user1.save
  end
  
  def destroy
  end
end
