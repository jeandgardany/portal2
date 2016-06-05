class Curso < ActiveRecord::Base
	has_many :disciplinas
  has_many :matriculas
	has_and_belongs_to_many :alunos
	
  validates :nome, :codigo, :duracao, :tipo, :valor, presence: true 
	validates :codigo, uniqueness: true


  def curso_codigo
    if self.curso.blank?
      "Sem Cadastro"
    else
      self.curso.codigo
    end
end
def curso_nome
    if self.curso.blank?
      "Sem Cadastro"
    else
      self.curso.nome
    end
  end
    
end
