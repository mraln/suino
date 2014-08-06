class ReprodutoresController < ApplicationController
  before_action :set_reprodutor, only: [:show, :edit, :update, :destroy]

  # GET /reprodutores
  # GET /reprodutores.json
  def index
    @reprodutores = Reprodutor.all
  end

  # GET /reprodutores/1
  # GET /reprodutores/1.json
  def show
  end

  # GET /reprodutores/new
  def new
    @reprodutor = Reprodutor.new
  end

  # GET /reprodutores/1/edit
  def edit
  end

  # POST /reprodutores
  # POST /reprodutores.json
  def create
    @reprodutor = Reprodutor.new(reprodutor_params)

    respond_to do |format|
      if @reprodutor.save
        format.html { redirect_to @reprodutor, notice: 'Reprodutor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reprodutor }
      else
        format.html { render action: 'new' }
        format.json { render json: @reprodutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reprodutores/1
  # PATCH/PUT /reprodutores/1.json
  def update
    respond_to do |format|
      if @reprodutor.update(reprodutor_params)
        format.html { redirect_to @reprodutor, notice: 'Reprodutor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reprodutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reprodutores/1
  # DELETE /reprodutores/1.json
  def destroy
    @reprodutor.destroy
    respond_to do |format|
      format.html { redirect_to reprodutores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reprodutor
      @reprodutor = Reprodutor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reprodutor_params
      params[:reprodutor].permit(:numid, :nome, :descricao)
    end
end
