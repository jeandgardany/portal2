class MensalidadesController < ApplicationController
  before_action :set_mensalidade, only: [:show, :edit, :update, :destroy]


  # GET /mensalidades
  # GET /mensalidades.json
  def index
    @q = Mensalidade.ransack(params[:q].try(:merge, m: 'or' ))
    @mensalidades = @q.result(distinct: true).page(params[:page]).per(10)
  end

  # GET /mensalidades/1
  # GET /mensalidades/1.json
  def show
  end

  # GET /mensalidades/new
  def new
    @mensalidade = Mensalidade.new
  end

  # GET /mensalidades/1/edit
  def edit
  end

  # POST /mensalidades
  # POST /mensalidades.json
  def create
    @mensalidade = Mensalidade.new(mensalidade_params)

    respond_to do |format|
      if @mensalidade.save
        format.html { redirect_to @mensalidade, notice: 'Mensalidade was successfully created.' }
        format.json { render :show, status: :created, location: @mensalidade }
      else
        format.html { render :new }
        format.json { render json: @mensalidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mensalidades/1
  # PATCH/PUT /mensalidades/1.json
  def update
    respond_to do |format|
      if @mensalidade.update(mensalidade_params)
        format.html { redirect_to @mensalidade, notice: 'Mensalidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @mensalidade }
      else
        format.html { render :edit }
        format.json { render json: @mensalidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mensalidades/1
  # DELETE /mensalidades/1.json
  def destroy
    @mensalidade.destroy
    respond_to do |format|
      format.html { redirect_to mensalidades_url, notice: 'Mensalidade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mensalidade
      @mensalidade = Mensalidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mensalidade_params
      params.require(:mensalidade).permit(:pago, :mes, :ano, :aluno_id, :solicitacao_matricula_id)
    end
end
