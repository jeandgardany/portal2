class Matricula < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :funcionario
  belongs_to :curso
  has_and_belongs_to_many :disciplinas, :join_table => :disciplinas_matriculas
  has_and_belongs_to_many :turmas, :join_table => :matriculas_turmas
  
  accepts_nested_attributes_for :disciplinas, :turmas, :curso, :funcionario, :aluno

  validates :inicio, :semestre, :inicio, :fim, :valor, :aluno_id, :funcionario_id, presence: true

def curso_nome
    if self.curso.blank?
      "Sem Cadastro"
    else
      self.curso.nome
    end
  end
  def curso_codigo
    if self.curso.blank?
      "Sem Cadastro"
    else
      self.curso.codigo
    end
end
def mat_id
    if self.matricula.blank?
      "Sem Cadastro"
    else
      self.matricula.id
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
