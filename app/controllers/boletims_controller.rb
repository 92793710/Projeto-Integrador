class BoletimsController < ApplicationController
  before_action :set_boletim, only: [:show, :edit, :update, :destroy]

  # GET /boletims
  # GET /boletims.json
  def index
    @boletims = Boletim.search(params[:nome])
  end

  # GET /boletims/1
  # GET /boletims/1.json
  def show
  end

  # GET /boletims/new
  def new
    @boletim = Boletim.new
  end

  # GET /boletims/1/edit
  def edit
  end

  # POST /boletims
  # POST /boletims.json
  def create
    @boletim = Boletim.new(boletim_params)

    respond_to do |format|
      if @boletim.save
        format.html { redirect_to @boletim, notice: 'Boletim was successfully created.' }
        format.json { render :show, status: :created, location: @boletim }
      else
        format.html { render :new }
        format.json { render json: @boletim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boletims/1
  # PATCH/PUT /boletims/1.json
  def update
    respond_to do |format|
      if @boletim.update(boletim_params)
        format.html { redirect_to @boletim, notice: 'Boletim was successfully updated.' }
        format.json { render :show, status: :ok, location: @boletim }
      else
        format.html { render :edit }
        format.json { render json: @boletim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boletims/1
  # DELETE /boletims/1.json
  def destroy
    @boletim.destroy
    respond_to do |format|
      format.html { redirect_to boletims_url, notice: 'Boletim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boletim
      @boletim = Boletim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boletim_params
      params.require(:boletim).permit(:nome, :idade, :masculino, :feminino, :email, :faltas, :turma, :turno, :aprovado, :reprovado)
    end
end
