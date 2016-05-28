class Aluno < ActiveRecord::Base
  belongs_to :user
  belongs_to :curso
  has_one :matricula
  has_and_belongs_to_many :disciplinas
  has_and_belongs_to_many :turmas
  
  validates :nome, :mat, :nascimento, :endereco, :cpf, :rg, :status, :sexo, presence: true 
  validates :cpf, :rg, uniqueness: true

  user = User.first

  def curso_nome
    if self.curso.blank?
      "Sem Cadastro"
    else
      self.curso.nome
    end
  end
  
end
