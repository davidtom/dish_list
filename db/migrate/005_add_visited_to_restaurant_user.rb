class AddVisitedToRestaurantUser < ActiveRecord::Migration
  def change
    add_column :restaurant_users, :visited, :boolean
  end
end
