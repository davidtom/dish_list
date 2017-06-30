class CreateUser < ActiveRecord::Migration
  def change
      create_table :users do |t|
        t.string :name
        t.string :password
        t.string :home_location
        t.string :work_location
        t.string :other_location
      end
  end
end
