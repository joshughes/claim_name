class User < ActiveRecord::Base
  has_and_belongs_to_many :baby_names
end
