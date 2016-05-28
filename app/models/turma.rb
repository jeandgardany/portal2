class Turma < ActiveRecord::Base
  has_one :disciplina
  has_one :matricula
  has_and_belongs_to_many :alunos
  
  validates :codigo, :turno, :semestre, :capacidade, presence: true 
  validates :codigo, uniqueness: true

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
