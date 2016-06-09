class Funcionario < ActiveRecord::Base
  belongs_to :user, :touch => true
  belongs_to :funcao, :touch => true
  has_many :matriculas
  has_many :disciplinas
  has_many :turmas

  accepts_nested_attributes_for :turmas, :matriculas, :user, :disciplinas
  
  validates :nome, :matricula, :nascimento, :endereco, :admissao, :status, :sexo, :cpf, :rg, presence: true 
  validates :matricula, :cpf, :rg, uniqueness: true
  

def curso_nome
    if self.curso.blank?
      "Sem Cadastro"
    else
      self.curso.nome
    end
end
def funcionario_nome
    if self.funcionario.blank?
      "Sem Cadastro"
    else
      self.funcionario.nome
    end
end
  
end
