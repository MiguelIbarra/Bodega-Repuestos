class BoletsController < ApplicationController
  before_action :set_bolet, only: [:show, :edit, :update, :destroy]

  # GET /bolets
  # GET /bolets.json
  def index
    @bolets = Bolet.all
  end

  # GET /bolets/1
  # GET /bolets/1.json
  def show
    @repuestos = @bolet.repuesto.all
  end

  # GET /bolets/new
  def new
    @bolet = Bolet.new
  end

  # GET /bolets/1/edit
  def edit
  end

  # POST /bolets
  # POST /bolets.json
  def create
    @bolet = Bolet.new(bolet_params)

    respond_to do |format|
      if @bolet.save
        format.html { redirect_to @bolet, notice: 'Bolet was successfully created.' }
        format.json { render :show, status: :created, location: @bolet }
      else
        format.html { render :new }
        format.json { render json: @bolet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bolets/1
  # PATCH/PUT /bolets/1.json
  def update
    respond_to do |format|
      if @bolet.update(bolet_params)
        format.html { redirect_to @bolet, notice: 'Bolet was successfully updated.' }
        format.json { render :show, status: :ok, location: @bolet }
      else
        format.html { render :edit }
        format.json { render json: @bolet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bolets/1
  # DELETE /bolets/1.json
  def destroy
    @bolet.destroy
    respond_to do |format|
      format.html { redirect_to bolets_url, notice: 'Bolet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bolet
      @bolet = Bolet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bolet_params
      params.require(:bolet).permit(:numboleta, :fecha, :cliente_id )
    end
end
