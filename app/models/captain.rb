class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    joins(boats: [:classifications]).where('classifications.name = ?', 'Catamaran').distinct
  end

  def self.sailors
    joins(boats: [:classifications]).where('classifications.name = ?', 'Sailboat').distinct
  end

  def self.talented_seafarers
    joins(boats: [:classifications]).where('classifications.name = ? AND classifications.name = ?)', 'Sailboat', 'Motorboat').distinct
  end

  def self.non_sailors
    joins(boats: [:classifications]).where('classifications.name NOT IN (?)', 'Sailboat').distinct
  end
end
