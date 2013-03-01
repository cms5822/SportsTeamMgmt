class Team < ActiveRecord::Base
  
  #attributes for Team
  attr_accessible :name, :manager_id, :league_id, :venue_id, :league, :venue, :manager

  #related tables
  #validates_uniqueness_of :col1, :scope => [:col2]
  has_many :games
  has_many :team_players
  has_many :team_coaches
  belongs_to :league #, :foreign_key => "league_id",
  belongs_to :venue #, :foreign_key => "venue_id",
  belongs_to :manager, :class_name => 'Person'

  #validates :manager_id, :presence => true, :length=>{:minimum => 1, :maximum => 30}
  validates_uniqueness_of :name, :scope => [:league_id]
  validates :league_id, :presence => true, :length=>{:minimum => 1, :maximum => 30}
  validates :venue_id, :presence => true, :length=>{:minimum => 1, :maximum => 30}
  validates :name, :presence => true, :length=>{:minimum => 1, :maximum => 30}
end
