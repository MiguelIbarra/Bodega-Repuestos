class RepuestoBoletsController < ApplicationController
  before_action :set_repuesto_bolet, only: [:show, :edit, :update, :destroy]

  # GET /repuesto_bolets
  # GET /repuesto_bolets.json
  def index
    @repuesto_bolets = RepuestoBolet.all
  end

  # GET /repuesto_bolets/1
  # GET /repuesto_bolets/1.json
  def show
  end

  # GET /repuesto_bolets/new
  def new
    @repuesto_bolet = RepuestoBolet.new
  end

  # GET /repuesto_bolets/1/edit
  def edit
  end

  # POST /repuesto_bolets
  # POST /repuesto_bolets.json
  def create
    @repuesto_bolet = RepuestoBolet.new(repuesto_bolet_params)

    respond_to do |format|
      if @repuesto_bolet.save
        format.html { redirect_to @repuesto_bolet, notice: 'Repuesto bolet was successfully created.' }
        format.json { render :show, status: :created, location: @repuesto_bolet }
      else
        format.html { render :new }
        format.json { render json: @repuesto_bolet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repuesto_bolets/1
  # PATCH/PUT /repuesto_bolets/1.json
  def update
    respond_to do |format|
      if @repuesto_bolet.update(repuesto_bolet_params)
        format.html { redirect_to @repuesto_bolet, notice: 'Repuesto bolet was successfully updated.' }
        format.json { render :show, status: :ok, location: @repuesto_bolet }
      else
        format.html { render :edit }
        format.json { render json: @repuesto_bolet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repuesto_bolets/1
  # DELETE /repuesto_bolets/1.json
  def destroy
    @repuesto_bolet.destroy
    respond_to do |format|
      format.html { redirect_to repuesto_bolets_url, notice: 'Repuesto bolet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repuesto_bolet
      @repuesto_bolet = RepuestoBolet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repuesto_bolet_params
      params.require(:repuesto_bolet).permit(:repuesto_id, :bolet_id)
    end
end
