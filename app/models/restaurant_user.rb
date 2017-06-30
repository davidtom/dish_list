class RestaurantUser < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user
  has_one :type, through: :restaurant
end
