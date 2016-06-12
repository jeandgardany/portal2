class Turma < ActiveRecord::Base
  belongs_to :disciplina
  belongs_to :funcionario
  has_many :matriculas
  accepts_nested_attributes_for :disciplina, :funcionario, :matriculas
  
  validates :codigo, :turno, :semestre, :capacidade, presence: true 
  validates :codigo, uniqueness: true

  
  require 'active_support'
  require 'active_support/core_ext/enumerable'

  def funcionario_nome
    if self.funcionario.blank?
      "Sem Cadastro"
    else
      self.funcionario.nome
    end
  end
  def disciplina_nome
    if self.disciplina.blank?
      "Sem Cadastro"
    else
      self.disciplina.nome
    end
  end
end
