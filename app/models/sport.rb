class Sport<ActiveRecord::Base
  
  before_destroy :check_for_leagues
  
  attr_accessible :name, :configpath
  has_many :leagues, :class_name => "League"
  validates_uniqueness_of :name
  validates :name, :presence => true, :length=>{:minimum => 1, :maximum => 30}, :uniqueness => true
  validates :configpath, :presence => true, :length=>{:minimum => 1, :maximum => 30}, :uniqueness => true
  
  private

  def check_for_leagues
    if leagues.count > 0
      errors[:base] << "cannot delete sport while referencing leagues exist"
      return false
    end
  end
  
end
