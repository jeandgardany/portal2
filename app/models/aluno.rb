class Aluno < ActiveRecord::Base
  belongs_to :user
  has_one :matricula
  
  validates :nome, :nascimento, :endereco, :telefone, :rg, :status, :sexo, presence: {message: 'não pode ficar em branco'}
  validates :cpf, uniqueness: {message: 'CPF já existe, coloque outro CPF'}
  validates :rg, uniqueness: {message: 'RG já existe, coloque outro RG'}
  #validates :user_id, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates_presence_of :telefone, :message => " - Deve ser preenchido"
  validates_length_of :telefone, maximum: 11, message: 'deve ter 11 caracteres, Ex. só números: 859xxxxxxxx'
  validates_length_of :cpf, maximum: 11, message: 'deve ter 11 caracteres, sem ponto ou traço'
  #validates :cpf, presence: { :if => :check_cpf }

  user = User.first

  def matricula_curso_id
    if self.matricula.blank?
      "Sem Cadastro"
    else
      self.matricula.curso.id
    end
  end
  def curso_codigo
    if self.curso.blank?
      "Sem Cadastro"
    else
      self.curso.codigo
    end
end
def aluno_matricula
  if self.aluno.blank?
    "Sem Cadastro"
  else
    self.aluno.matricula
  end
end
def curso_nome
    if self.curso.blank?
      "Sem Cadastro"
    else
      self.curso.nome
    end
end
def matricula_curso
    if self.matricula.blank?
      "Sem Cadastro"
    else
      self.matricula.curso_nome
    end
end
def matricula_disciplinas
    if self.matricula.blank?
      "Sem Cadastro"
    else
      self.matricula.disciplinas
    end
end
  def mat_id
    if self.matricula.blank?
      "Sem Cadastro"
    else
      self.matricula.id
    end
  end
   
    def check_cpf(cpf=nil)
      return false if cpf.nil?
     
      winvalidos = %w{12345678909 11111111111 22222222222 33333333333 44444444444 55555555555 66666666666 77777777777 88888888888 99999999999 00000000000}
      wvalor = cpf.scan /[0-9]/
      if wvalor.length == 11
        unless winvalidos.member?(wvalor.join)
          wvalor = wvalor.collect{|x| x.to_i}
          wsoma = 10*wvalor[0]+9*wvalor[1]+8*wvalor[2]+7*wvalor[3]+6*wvalor[4]+5*wvalor[5]+4*wvalor[6]+3*wvalor[7]+2*wvalor[8]
          wsoma = wsoma - (11 * (wsoma/11))
          wresult1 = (wsoma == 0 or wsoma == 1) ? 0 : 11 - wsoma
          if wresult1 == wvalor[9]
            wsoma = wvalor[0]*11+wvalor[1]*10+wvalor[2]*9+wvalor[3]*8+wvalor[4]*7+wvalor[5]*6+wvalor[6]*5+wvalor[7]*4+wvalor[8]*3+wvalor[9]*2
            wsoma = wsoma - (11 * (wsoma/11))
            wresult2 = (wsoma == 0 or wsoma == 1) ? 0 : 11 - wsoma
            return true if wresult2 == wvalor[10] # CPF validado
          end
        end
      end
      return false # CPF invalidado
    end
   
end
  
 
