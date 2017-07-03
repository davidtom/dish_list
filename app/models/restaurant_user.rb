# == Schema Information
#
# Table name: restaurant_users
#
#  id            :integer          not null, primary key
#  restaurant_id :integer
#  user_id       :integer
#  visited       :boolean          default(FALSE)
#

class RestaurantUser < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user
  has_one :type, through: :restaurant
end
