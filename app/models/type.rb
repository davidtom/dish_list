# == Schema Information
#
# Table name: types
#
#  id   :integer          not null, primary key
#  name :string
#

class Type < ActiveRecord::Base
  has_many :restaurants
end
