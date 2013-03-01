class Venue < ActiveRecord::Base
  #Relations
  #Waiting to find out the foreign_keys
  attr_accessible :name, :description, :seatCapacity, :indoor, :address
  
  has_many :games, :class_name => "Game"
  has_many :leagues

  #Validations
  validates_uniqueness_of :address
  validates :name, :presence => true, :length=>{:minimum => 1, :maximum => 50}
  validates :address, :presence => true, :length=>{:minimum => 1, :maximum => 100}
  validates :description, :presence => true, :length=>{:minimum => 10, :maximum => 2000}
  validates :seatCapacity, :presence => true, :numericality => { :only_integer => true }
  validates :indoor, :inclusion => { :in => [true, false] }

end
