class TeamPlayer < ActiveRecord::Base
  attr_accessible :active, :person_id, :player_number, :team_id, :team, :person
  validates_inclusion_of :active, :in => 0..1, :message => "Sorry bool value must be 0 or 1"

  belongs_to :team
  belongs_to :person

  validates_uniqueness_of :person_id, :scope => [:team_id]
  validates_uniqueness_of :team_id, :scope => [:player_number]
  validates :person_id, :presence => true, :length=>{:minimum => 1, :maximum => 30}
  validates :team_id, :presence => true, :length=>{:minimum => 1, :maximum => 30}
  validates :player_number, :presence => true, :length=>{:minimum => 1, :maximum => 30}
  validates :active, :presence => true, :length=>{:minimum => 1, :maximum => 30}

end