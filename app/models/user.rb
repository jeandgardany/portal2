class User < ActiveRecord::Base
  enum role: [ :visitante, :aluno, :atendente, :coordenador, :professor, :administrador ]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :funcionarios
  has_one :aluno

  def aluno_nome
    if self.aluno.blank?
      "Sem Cadastro"
    else
      self.aluno.nome
    end
  end
  def aluno_matricula
  if self.aluno.blank?
    "Sem Cadastro"
  else
    self.aluno.matricula
  end
end   
    def aluno_created_at
    if self.aluno.blank?
      "Sem Cadastro"
    else
      self.aluno.created_at
    end
  end
  def aluno_endereco
    if self.aluno.blank?
      "Sem Cadastro"
    else
      self.aluno.endereco
    end
  end
  def aluno_mensalidade
    if self.aluno.blank?
      "Sem Cadastro"
    else
      self.aluno.mensalidade
    end
  end
def aluno_curso
    if self.aluno.blank?
      "Sem Cadastro"
    else
      self.aluno.curso
    end
  end

def mat_id
    if self.matricula.blank?
      "Sem Cadastro"
    else
      self.matricula.id
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
