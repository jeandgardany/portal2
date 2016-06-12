class SolicitacaoMatricula < ActiveRecord::Base
  belongs_to :aluno
  has_many :matriculas

  accepts_nested_attributes_for :aluno, :matriculas
  
end
