class User < ActiveRecord::Base
  has_and_belongs_to_many :baby_names
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed

  #accepts_nested_attributes_for :baby_names
end
