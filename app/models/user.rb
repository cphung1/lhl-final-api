class User < ActiveRecord::Base
  has_secure_password
  has_many :user_events
  has_many :events, :through => :user_events

  has_many :likers, foreign_key: :liker_id, class_name: 'Like'
  has_many :likee, through: :likers
  has_many :likee, foreign_key: :likee_id, class_name: 'Like'
  has_many :likers, through: :likee

  has_many :dislikers, foreign_key: :disliker_id, class_name: 'Dislike'
  has_many :dislikee, through: :dislikers
  has_many :dislikee, foreign_key: :dislikee_id, class_name: 'Dislike'
  has_many :dislikers, through: :dislikee
end
