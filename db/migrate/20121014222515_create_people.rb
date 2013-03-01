class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      #t.references :TeamCoach
      #t.references :TeamPlayer
      t.string :name
      t.string :address
      t.string :username
      t.timestamps
    end
  end
end
