class Dislike < ActiveRecord::Base
  belongs_to :dislikee, class_name: "User"
  belongs_to :disliker, class_name: "User"
end
