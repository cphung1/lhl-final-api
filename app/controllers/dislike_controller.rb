class DislikeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    dislike_list = Dislike.all()
    render json: dislike_list
  end

  def show
    @disliker = Dislike.where(disliker_id: params[:id]).pluck(:dislikee_id)
    @dislikee = User.find(@disliker)
    render json: @dislikee

  end

  def create
    @dislike_person = Dislike.create(dislikee_id: dislikee_params, disliker_id: disliker_params)

    if @dislike_person 
      render json: @dislike_person
    else
      puts "cannot dislike"
    end
  end

  private 
  def dislikee_params
    params['data']['dislikee_id']
  end

  def disliker_params
    params['data']['disliker_id']
  end
end
