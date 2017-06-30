class Restaurant < ActiveRecord::Base
  belongs_to :type
  has_many :restaurant_users
  has_many :users, through: :restaurant_users
end
