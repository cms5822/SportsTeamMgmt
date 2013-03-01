class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :seatCapacity
      t.boolean :indoor
      t.timestamps
    end
  end
end
