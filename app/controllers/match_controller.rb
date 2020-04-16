class MatchController < ApplicationController
  def index 
  end

  def show 
    @current_user = params[:id]
    @matches = Match.where(like_user: @current_user).pluck(:match_user)
    @display_matches = User.where(id: @matches)

    # @current_user = 1 
    # @other_user = User.where.not(id: @current_user).pluck(:id)

    # @check_current_likes_other = @other_user.map( |element|
    #   puts element #[2, 3, 4, 5, 6, 7, 8, 9, 10]
    #   @reuslts = Like.where(liker_id: 1, likee_id: element).pluck(:id)
    #   @results #[2]
    # )

    # @check_other_likes_current = @other_user.map( |element| 
    #   @results2 = Like.where(liker_id: element, likee_id: 2)
      
    # )

    # @results
    # @results2 
    # if number exists in bothh @results && @results2
    #   push that number to @output
    # end 

    # @matches = Match.create(current_user: 1, match_user: @output)

    render json: @display_matches
  end


  def create
    @new_match = Match.create(like_user: liker_params, match_user: likee_params)
    @reverse_match = Match.create(like_user: liker_params, match_user: likee_params)

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
