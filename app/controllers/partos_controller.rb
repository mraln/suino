class PartosController < ApplicationController
  before_action :set_matriz
  before_action :set_parto, only: [:show, :edit, :update, :destroy]

  # GET /partos
  # GET /partos.json
  def index
    @partos = @matriz.partos
  end

  # GET /partos/1
  # GET /partos/1.json
  def show
  end

  # GET /partos/new
  def new
    @parto = @matriz.partos.new
  end

  # GET /partos/1/edit
  def edit
  end

  # POST /partos
  # POST /partos.json
  def create
    @parto = @matriz.partos.new(parto_params_on_create)

    respond_to do |format|
      if @parto.save
        format.html { redirect_to matriz_parto_path(@matriz, @parto), notice: 'Parto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @parto }
      else
        format.html { render action: 'new' }
        format.json { render json: @parto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partos/1
  # PATCH/PUT /partos/1.json
  def update
    respond_to do |format|
      if @parto.update(parto_params_on_update)
        format.html { redirect_to matriz_parto_path(@matriz, @parto), notice: 'Parto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @parto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partos/1
  # DELETE /partos/1.json
  def destroy
    @parto.destroy
    respond_to do |format|
      format.html { redirect_to matriz_partos_url(@matriz) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matriz
      @matriz = Matriz.find(params[:matriz_id])
    end

    def set_parto
      @parto = @matriz.partos.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parto_params_on_create
      params.require(:parto).permit(:reprodutor_id, :cobertura)
    end

    def parto_params_on_update
      params.require(:parto).permit(:data_parto, :qtde_filhos, :mortalidade)
    end
end
