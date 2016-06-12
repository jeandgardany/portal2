class AlunosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_aluno, only: [:show, :edit, :update, :destroy]
  before_action :set_users, only: [:new, :show, :edit, :update, :create]
  before_action :set_matriculas, only: [:new, :show, :edit, :update, :create]

  # GET /alunos
  # GET /alunos.json
  def index
    @q = Aluno.ransack(params[:q].try(:merge, m: 'or' ))
    @alunos = @q.result(distinct: true).page(params[:page])
    #if params[:search]
    #  @alunos = Aluno.search(params[:search])
    #else
    #  @alunos = Aluno.all.page(params['page']).per(5)
    #end
  end

  # GET /alunos/1
  # GET /alunos/1.json
  def show
    
  end

  # GET /alunos/new
  def new
    @aluno = Aluno.new
    
  end

  # GET /alunos/1/edit
  def edit
    
  end

  # POST /alunos
  # POST /alunos.json
  def create
   @aluno = Aluno.new(aluno_params)

    respond_to do |format|
      if @aluno.save
        format.html { redirect_to @aluno, notice: 'Aluno foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @aluno }
      else
        format.html { render :new }
        format.json { render json: @aluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alunos/1
  # PATCH/PUT /alunos/1.json
  def update
    respond_to do |format|
      if @aluno.update(aluno_params)
        format.html { redirect_to @aluno, notice: 'Aluno was successfully updated.' }
        format.json { render :show, status: :ok, location: @aluno }
      else
        format.html { render :edit }
        format.json { render json: @aluno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alunos/1
  # DELETE /alunos/1.json
  def destroy
    @aluno.destroy
    respond_to do |format|
      format.html { redirect_to alunos_url, notice: 'Aluno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aluno
     authorize @aluno = Aluno.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def aluno_params
      params.require(:aluno).permit( :matricula, :nome, :sexo, :nascimento, :endereco, :telefone, :cpf, :rg, :status, :user_id)
    end
    def set_users
        @users = User.all
    end
    def set_matriculas
        @matriculas = Matricula.all
    end
    
end