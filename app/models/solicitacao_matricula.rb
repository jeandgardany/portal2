class SolicitacaoMatricula < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :mensalidade
  has_many :matriculas

  accepts_nested_attributes_for :aluno, :matriculas

  validates :ano, :semestre, :aluno_id, :matriculas, presence: {message: 'não pode ficar em branco'}
  #validates :matricula, uniqueness: {message: 'Matricula já existe, para outro aluno'}

end
