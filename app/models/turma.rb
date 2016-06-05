class Turma < ActiveRecord::Base
  has_one :disciplina
  has_and_belongs_to_many :matriculas, :join_table => :matriculas_turmas
  
  validates :codigo, :turno, :semestre, :capacidade, presence: true 
  validates :codigo, uniqueness: true

  def funcionario_nome
    if self.funcionario.blank?
      "Sem Cadastro"
    else
      self.funcionario.nome
    end
  end

end
