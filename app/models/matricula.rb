class Matricula < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :funcionario
  belongs_to :turma
  belongs_to :solicitacao_matricula
  
  accepts_nested_attributes_for :turma, :funcionario, :aluno, :solicitacao_matricula

  validates :semestre, :inicio, :fim, :turma_id, :aluno_id, :funcionario_id, presence: true

def turma_nome
    if self.turma.blank?
      "Sem Cadastro"
    else
      self.turma.nome
    end
  end
  def turma_codigo
    if self.turma.blank?
      "Sem Cadastro"
    else
      self.turma.codigo
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
