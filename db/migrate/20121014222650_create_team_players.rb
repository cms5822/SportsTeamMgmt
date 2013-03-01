class CreateTeamPlayers < ActiveRecord::Migration
  def change
    create_table :team_players do |t|
      #t.Person :personID
      t.references :person
      t.references :team
      t.integer :player_number
      t.integer :active
      t.timestamp
    end
  end
end
