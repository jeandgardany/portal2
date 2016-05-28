class FuncionariosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_funcionario, only: [:show, :edit, :update, :destroy]

  # GET /funcionarios
  # GET /funcionarios.json
  def index
    @funcionarios = Funcionario.all.page(params['page']).per(5)
  end

  # GET /funcionarios/1
  # GET /funcionarios/1.json
  def show
  end

  # GET /funcionarios/new
  def new
    @funcionario = Funcionario.new
  end

  # GET /funcionarios/1/edit
  def edit
  end

  # POST /funcionarios
  # POST /funcionarios.json
  def create
    #@funcionario = Funcionario.find(params[:funcionario_id])
    
    @funcionario = Funcionario.new(funcionario_params)
    #@funcao = @funcionario.funcao.create(params[:funcao_cargo])
    #@user = @funcionario.users.create(params[:user_email])
    respond_to do |format|
      if @funcionario.save
        format.html { redirect_to @funcionario, notice: 'Funcionario was successfully created.' }
        format.json { render :show, status: :created, location: @funcionario }
      else
        format.html { render :new }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funcionarios/1
  # PATCH/PUT /funcionarios/1.json
  def update
    respond_to do |format|
      if @funcionario.update(funcionario_params)
        format.html { redirect_to @funcionario, notice: 'Funcionario was successfully updated.' }
        format.json { render :show, status: :ok, location: @funcionario }
      else
        format.html { render :edit }
        format.json { render json: @funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funcionarios/1
  # DELETE /funcionarios/1.json
  def destroy
   authorize @funcionario.destroy
    respond_to do |format|
      format.html { redirect_to funcionarios_url, notice: 'Funcionario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funcionario
      authorize @funcionario = Funcionario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def funcionario_params
      params.require(:funcionario).permit(:matricula, :nome, :nascimento, :sexo, :cpf, :rg, :endereco, :admissao, :salario, :carga_horaria, :turno, :status, :user_id, :funcao_id )
    end
end
