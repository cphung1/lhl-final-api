class User < ActiveRecord::Base
  has_secure_password
  has_many :user_events
  has_many :events, :through => :user_events

  has_many :likes
  has_many :liked_people, through :likes

  has_many :dislikes
  has_many :disliked_people, through: dislikes
end
