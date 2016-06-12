class Mensalidade < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :solicitacao_matricula

  accepts_nested_attributes_for :aluno, :solicitacao_matricula
  scope :search1, ->(query) { where("mes like ?", "%#{query}%")}
  scope :search1, ->(query) { where("ano like ?", "%#{query}%")}

end
