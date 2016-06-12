class SolicitacaoMatriculasController < ApplicationController
  before_action :set_solicitacao_matricula, only: [:show, :edit, :update, :destroy]
  

  # GET /solicitacao_matriculas
  # GET /solicitacao_matriculas.json
  def index
    @solicitacao_matriculas = SolicitacaoMatricula.all
  end

  # GET /solicitacao_matriculas/1
  # GET /solicitacao_matriculas/1.json
  def show
  end

  # GET /solicitacao_matriculas/new
  def new
    @solicitacao_matricula = SolicitacaoMatricula.new
  end

  # GET /solicitacao_matriculas/1/edit
  def edit
   
  end

  # POST /solicitacao_matriculas
  # POST /solicitacao_matriculas.json
  def create
    @solicitacao_matricula = SolicitacaoMatricula.new(solicitacao_matricula_params)

    respond_to do |format|
      if @solicitacao_matricula.save
        format.html { redirect_to @solicitacao_matricula, notice: 'Solicitacao matricula was successfully created.' }
        format.json { render :show, status: :created, location: @solicitacao_matricula }
      else
        format.html { render :new }
        format.json { render json: @solicitacao_matricula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitacao_matriculas/1
  # PATCH/PUT /solicitacao_matriculas/1.json
  def update
    respond_to do |format|
      if @solicitacao_matricula.update(solicitacao_matricula_params)
        format.html { redirect_to @solicitacao_matricula, notice: 'Solicitacao matricula was successfully updated.' }
        format.json { render :show, status: :ok, location: @solicitacao_matricula }
      else
        format.html { render :edit }
        format.json { render json: @solicitacao_matricula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitacao_matriculas/1
  # DELETE /solicitacao_matriculas/1.json
  def destroy
    @solicitacao_matricula.destroy
    respond_to do |format|
      format.html { redirect_to solicitacao_matriculas_url, notice: 'Solicitacao matricula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitacao_matricula
      @solicitacao_matricula = SolicitacaoMatricula.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitacao_matricula_params
      params.require(:solicitacao_matricula).permit(:valor, :ano, :semestre, :aluno_id, {:matricula_ids => []})
    end
end
