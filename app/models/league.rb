class League < ActiveRecord::Base
  
  attr_accessible :name, :person_id, :sport_id, :owner_id, :teams, :sport, :owner
    #attributes for Team
    validates :name, :presence => true, :length=>{:minimum => 1, :maximum => 30}
    #related tables
    
    #belongs_to :person
    #belongs_to :sport
    belongs_to :owner, :class_name => 'Person'
    #has_one :Owner, :foreign_key => "id", :class_name => "Person"
    #has_one :sport, :foreign_key => "sport_id", :class_name => "Sport"
    
    belongs_to :sport
    has_many :teams
    has_many :games

    validates_uniqueness_of :name
    validates :sport_id, :presence => true, :length=>{:minimum => 1, :maximum => 30}

end
