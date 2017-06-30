class User < ActiveRecord::Base
  has_many :restaurant_users
  has_many :restaurants, through: :restaurant_users

  def visited?(restaurant)
    self.restaurant_users.find_by(restaurant_id: restaurant.id).visited ? "checked" : ""
  end
end
