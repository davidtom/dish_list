# == Schema Information
#
# Table name: restaurants
#
#  id      :integer          not null, primary key
#  name    :string
#  address :string
#  website :string
#  type_id :integer
#

class Restaurant < ActiveRecord::Base
  belongs_to :type
  has_many :restaurant_users
  has_many :users, through: :restaurant_users
end
