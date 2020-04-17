class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    @event_id = params[:id]
    @user_id = params[:user_id]

    # Find all users going to a given event 
    @single_event_with_users = UserEvent.where(event_id: @event_id).pluck(:user_id)

    # deletes current user from the list of people that are going to the event 
    @single_event_with_users.delete(@user_id.to_i)

    # gives us an array of id's of users without the current user
    @all_users_to_event = User.where(id: @single_event_with_users).pluck(:id)

    # output array
    @output = []

    # checks to see if the user has already been liked or disliked by current user, if not then push them to array 
    for i in @all_users_to_event do 
      if !Like.exists?(likee: i) && !Dislike.exists?(dislikee: i)
        @output.push(i) 
      end
    end

    @filtered_users = User.where(id: @output)

    render json: @filtered_users
  end

  def myprofile
    @user_id = User.where(id: params[:id])

    render json: @user_id
  end
end
