class User < ActiveRecord::Base
  enum role: [ :aluno, :atendente, :coordenador, :professor, :administrador ]

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
    def aluno_mat
    if self.aluno.blank?
      "Sem Cadastro"
    else
      self.aluno.mat
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

end
