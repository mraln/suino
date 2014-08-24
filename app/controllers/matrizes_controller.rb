class MatrizesController < ApplicationController
  before_action :set_matriz, only: [:show, :edit, :update, :destroy]

  # GET /matrizes
  # GET /matrizes.json
  def index
    @matrizes = Matriz.all
  end

  # GET /matrizes/1
  # GET /matrizes/1.json
  def show
  end

  # GET /matrizes/new
  def new
    @matriz = Matriz.new
  end

  # GET /matrizes/1/edit
  def edit
  end

  # POST /matrizes
  # POST /matrizes.json
  def create
    @matriz = Matriz.new(matriz_params)

    respond_to do |format|
      if @matriz.save
        format.html { redirect_to @matriz, notice: 'Matriz was successfully created.' }
        format.json { render action: 'show', status: :created, location: @matriz }
      else
        format.html { render action: 'new' }
        format.json { render json: @matriz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matrizes/1
  # PATCH/PUT /matrizes/1.json
  def update
    respond_to do |format|
      if @matriz.update(matriz_params)
        format.html { redirect_to @matriz, notice: 'Matriz was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @matriz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matrizes/1
  # DELETE /matrizes/1.json
  def destroy
    @matriz.destroy
    respond_to do |format|
      format.html { redirect_to matrizes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matriz
      @matriz = Matriz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matriz_params
      params.require(:matriz).permit(:numid, :nome, :raca)
    end
end
