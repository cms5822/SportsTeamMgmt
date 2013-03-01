class Game < ActiveRecord::Base
  attr_accessible   :league_id, :venue_id, :home_id, :away_id, :date, :homeScore, :awayScore, :venue, :league, :home, :away

  #Relationships
  belongs_to :league
  belongs_to :venue
  
  belongs_to :home, :foreign_key => "home_id", :class_name => "Team"
  belongs_to :away, :foreign_key => "away_id", :class_name => "Team"

  validates_uniqueness_of :home_id, :scope => [:date]
  validates_uniqueness_of :away_id, :scope => [:date]
  validate :different_teams

  def different_teams
    if self.away_id == self.home_id
      errors[:base] << "Home and away team can not be the same"
    end
  end
  #validates :league_id, :presence => true, :length=>{:minimum => 1, :maximum => 30}
  #validates :venue_id, :presence => true, :length=>{:minimum => 1, :maximum => 30}
  #validates :home_id, :presence => true, :length=>{:minimum => 1, :maximum => 30}
  #validates :away_id, :presence => true, :length=>{:minimum => 1, :maximum => 30}

end
