class TeamCoach < ActiveRecord::Base
  attr_accessible :team_id, :person_id, :coachTitle, :person, :team
  
  belongs_to :team
  belongs_to :person

  validates_uniqueness_of :person_id, :scope => [:team_id]
  validates :team_id, :presence => true, :length=>{:minimum => 1, :maximum => 30}
  validates :person_id, :presence => true, :length=>{:minimum => 1, :maximum => 30}
  validates :coachTitle, :presence => true, :length=>{:minimum => 1, :maximum => 100}
end
