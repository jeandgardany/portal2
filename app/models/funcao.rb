class Funcao < ActiveRecord::Base
	has_many :funcionarioss
	
	validates :cargo, presence: true 
  	validates :cargo, uniqueness: true
end
