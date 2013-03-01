class CreateTeamCoaches < ActiveRecord::Migration
  def change
    create_table :team_coaches do |t|
      t.references :person
      t.references :team
      t.string :coachTitle
      t.timestamps
    end
  end
end
