class LikeController < ApplicationController
  def index
    like_list = Like.all()
    render json: like_list
  end

  def create
    like_person = Like.create(likee_id: PARAMS, liker_id: PARAMS)

    if like_person 
      render json: like_person
    else
      puts "cannot like"
    end
  end
end
