class Funcionario < ActiveRecord::Base
  belongs_to :user, :touch => true
  belongs_to :funcao, :touch => true
  has_many :matriculas
  has_many :turmas
  has_many :disciplinas
  
  validates :nome, :matricula, :nascimento, :endereco, :admissao, :status, :sexo, :cpf, :rg, presence: true 
  validates :matricula, :cpf, :rg, uniqueness: true
  
end
