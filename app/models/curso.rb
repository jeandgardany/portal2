class Curso < ActiveRecord::Base
	has_many :disciplinas
	
    validates :nome, :codigo, :duracao, :tipo, presence: true 
	validates :codigo, uniqueness: true
end
