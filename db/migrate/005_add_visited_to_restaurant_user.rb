class AddVisitedToRestaurantUser < ActiveRecord::Migration
  def change
    add_column :restaurant_users, :visited, :boolean, :default => false
  end
end
