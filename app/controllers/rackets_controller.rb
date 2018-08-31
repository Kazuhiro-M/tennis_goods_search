class RacketsController < ApplicationController
  before_action :set_racket, only: [:show, :edit, :update, :destroy]

  # GET /rackets
  # GET /rackets.json
  def index
    @rackets = Racket.all
  end

  # GET /rackets/1
  # GET /rackets/1.json
  def show
  end

  # GET /rackets/new
  def new
    @racket = Racket.new
  end

  # GET /rackets/1/edit
  def edit
  end

  # POST /rackets
  # POST /rackets.json
  def create
    @racket = Racket.new(racket_params)

    respond_to do |format|
      if @racket.save
        format.html { redirect_to @racket, notice: 'Racket was successfully created.' }
        format.json { render :show, status: :created, location: @racket }
      else
        format.html { render :new }
        format.json { render json: @racket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rackets/1
  # PATCH/PUT /rackets/1.json
  def update
    respond_to do |format|
      if @racket.update(racket_params)
        format.html { redirect_to @racket, notice: 'Racket was successfully updated.' }
        format.json { render :show, status: :ok, location: @racket }
      else
        format.html { render :edit }
        format.json { render json: @racket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rackets/1
  # DELETE /rackets/1.json
  def destroy
    @racket.destroy
    respond_to do |format|
      format.html { redirect_to rackets_url, notice: 'Racket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_racket
      @racket = Racket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def racket_params
      params.require(:racket).permit(:name, :maker_id, :series_id, :model_player_id, :level, :point_physical, :point_playing_style, :point_support, :point_spin, :point_feeling, :spec_weight, :spec_face, :spec_thickness, :spec_balance, :spec_length, :spec_string_pattern, :spec_model, :url, :price, :page_count, :string_id, :image)
    end
end
