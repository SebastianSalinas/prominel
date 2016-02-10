class ObrerosController < ApplicationController
  before_action :set_obrero, only: [:show, :edit, :update, :destroy]

  # GET /obreros
  # GET /obreros.json
  def index
    @obreros = Obrero.all
  end

  # GET /obreros/1
  # GET /obreros/1.json
  def show
  end

  # GET /obreros/new
  def new
    @obrero = Obrero.new
  end

  # GET /obreros/1/edit
  def edit
  end

  # POST /obreros
  # POST /obreros.json
  def create
    @obrero = Obrero.new(obrero_params)

    respond_to do |format|
      if @obrero.save
        format.html { redirect_to @obrero, notice: 'Obrero was successfully created.' }
        format.json { render action: 'show', status: :created, location: @obrero }
      else
        format.html { render action: 'new' }
        format.json { render json: @obrero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obreros/1
  # PATCH/PUT /obreros/1.json
  def update
    respond_to do |format|
      if @obrero.update(obrero_params)
        format.html { redirect_to @obrero, notice: 'Obrero was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @obrero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obreros/1
  # DELETE /obreros/1.json
  def destroy
    @obrero.destroy
    respond_to do |format|
      format.html { redirect_to obreros_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obrero
      @obrero = Obrero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obrero_params
      params.require(:obrero).permit(:nombre, :email, :nacimiento, :lat_hogar, :lon_hogar)
    end
end
