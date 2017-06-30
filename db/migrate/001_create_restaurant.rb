class CreateRestaurant < ActiveRecord::Migration
  def change
      create_table :restaurants do |t|
        t.string :name
        t.string :address
        t.string :website
        t.integer :type_id
      end
  end
end
