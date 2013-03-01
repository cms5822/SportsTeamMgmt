class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :league
      t.references :venue
      t.integer :home_id, :references => :team
      t.integer :away_id, :references => :team
      t.date :date
      t.integer :homeScore
      t.integer :awayScore
      t.timestamps
    end
  end
end
