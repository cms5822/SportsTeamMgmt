class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.references :manager, :references => :person
      t.references :league
      t.references :venue
      t.timestamps
    end
  end
end
