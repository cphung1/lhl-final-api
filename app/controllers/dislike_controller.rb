class DislikeController < ApplicationController
  def index
    dislike_list = Dislike.all()
    render json: dislike_list
  end

  def create
    dislike_person = Dislike.create(dislikee_id: PARAMS, disliker_id: PARAMS)

    if dislike_person 
      render json: dislike_person
    else
      puts "cannot dislike"
    end
  end
end
