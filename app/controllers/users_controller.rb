class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    @event_id = params[:id]
    @user_id = params[:user_id]

   # @single_event_with_users = UserEvent.where(event_id: @event_id).pluck(:user_id)
    #@all_users_to_event = User.find(@single_event_with_users)
    
    #@dulpicate = @all_users_to_event.where.not(user_id: @user_id)

    @single_event_with_users = UserEvent.where(event_id: @event_id).map(&:single_event_with_users)
    @testing = User.find(@single_event_with_users).where.not(id: 1)

    render json: @testing


    #render json: @all_users_to_event
  end



end
