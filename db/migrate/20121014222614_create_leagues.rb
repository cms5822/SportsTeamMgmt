class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name
      t.references :sport
      t.integer :owner_id, :references => :person
      t.timestamps
    end
  end
end
