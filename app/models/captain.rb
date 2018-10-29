class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    joins(boats: [:classifications]).where('classifications.name = ?', 'Catamaran').distinct
  end

  def self.sailors
<<<<<<< HEAD
    joins(boats: [:classifications]).where('classifications.name = ?', 'Sailboat').distinct
=======
    boats.includes(:classifications).where('classifications.name = ?', 'example')
>>>>>>> 3d59626d9b7d55630b5c5c73803b447e51ab4068
  end

  def self.talented_seafarers
    joins(boats: [:classifications]).where(name: ['Sailboat', 'Motorboat'])
  end

  def self.non_sailors
  end
end
