class Matricula < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :funcionario
  has_many :disciplinas
  has_many :turmas

  validates :numero, :inicio, :fim, :valor, :aluno_id, :funcionario_id, presence: true
  validates :numero, uniqueness: true

def curso_nome
    if self.curso.blank?
      "Sem Cadastro"
    else
      self.curso.nome
    end
  end

end
