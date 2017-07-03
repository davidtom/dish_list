# == Schema Information
#
# Table name: users
#
#  id             :integer          not null, primary key
#  name           :string
#  password       :string
#  home_location  :string
#  work_location  :string
#  other_location :string
#

class User < ActiveRecord::Base
  has_many :restaurant_users
  has_many :restaurants, through: :restaurant_users

  def visited?(restaurant)
    self.restaurant_users.find_by(restaurant_id: restaurant.id).visited ? "checked" : ""
  end

  def update_visited(checked_restaurants)
    checked_restaurants = {} if checked_restaurants.nil?
    self.restaurant_users.each do |row|
      if checked_restaurants.keys.include?(row.restaurant_id.to_s)
        row.update(visited: true)
      else
        row.update(visited: false)
      end
    end
  end

end
