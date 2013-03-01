class Person < ActiveRecord::Base
  
  attr_accessible :name, :address, :username
  
  #Relations
  #Waiting to find out the foreign_keys
  has_many :team_coaches
  has_many :team_players
  has_many :teams, :foreign_key => 'manager_id'

  has_many :leagues, :foreign_key => 'owner_id'
 
  #Validations
  validates_uniqueness_of :username
  validates :name, :presence => true, :length=>{:minimum => 1, :maximum => 30}
  validates :address, :presence => true, :length=>{:minimum => 1, :maximum => 100}
  validates :username, :presence => true, :length=>{:minimum => 1, :maximum => 30}

end
