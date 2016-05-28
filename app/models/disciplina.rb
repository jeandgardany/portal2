class Disciplina < ActiveRecord::Base
  belongs_to :curso, :touch => true
  belongs_to :funcionario, :touch => true
  belongs_to :turma
  has_and_belongs_to_many :alunos
  has_one :matricula
  
  validates :nome, :codigo, presence: true 
  validates :nome, :codigo, uniqueness: true

def curso_nome
    if self.curso.blank?
      "Sem Cadastro"
    else
      self.curso.nome
    end
  end
  def turma_codigo
    if self.turma.blank?
      "Sem Cadastro"
    else
      self.turma.codigo
    end
  end
end