class LikeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    like_list = Like.all()
    render json: like_list
  end

  def show
    @liker = Like.where(liker_id: params[:id]).pluck(:likee_id)
    @likee = User.find(@liker)
    render json: @likee
  end

  def create
    @like_person = Like.create(liker_id: liker_params, likee_id: likee_params, )

    # bob (liker) likes joe(likee)
    # joe (liker) likes bob (likee)

    @check = Like.where(liker_id: likee_params, likee_id: liker_params)

    # @matches = @check.select{|id| @check.include?(id)}
    # if @like_person 
    #   render json: @like_person
    # else
    #   puts "cannot like"
    # end

    if @check && @like_person
      return "match" # POST REQUEST TO MATCHES
    elsif @like_person 
      render json: @like_person
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
