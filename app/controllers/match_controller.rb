class MatchController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index 
  end

  def show 
    @current_user = params[:id]
    @matches = Match.where(like_user: @current_user).pluck(:match_user)
    @display_matches = User.where(id: @matches)
    
    render json: @display_matches
  end


  def create
    @new_match = Match.create(like_user: liker_params, match_user: likee_params)
    @reverse_match = Match.create(like_user: likee_params, match_user: liker_params)

    if @new_match
      render json: @new_match
    end
  end

  private 
  def likee_params
    params['data']['likee_id']
  end

  def liker_params
    params['data']['liker_id']
  end
end
