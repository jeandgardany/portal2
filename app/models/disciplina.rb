class Disciplina < ActiveRecord::Base
  belongs_to :funcionario, :touch => true
  has_many :turmas
  belongs_to :curso
  has_many :matriculas
  accepts_nested_attributes_for :turmas, :matriculas

  
  validates :nome, :codigo, presence: {message: 'não pode ficar em branco'}
  validates :codigo, uniqueness: {message: 'Código já existe, coloque outro Código'}

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
  def aluno_nome
    if self.aluno.blank?
      "Sem Cadastro"
    else
      self.aluno.nome
    end
  end
end