class HenrekisController < ApplicationController
  before_action :set_henreki, only: %i[ show edit update destroy ]

  # GET /henrekis or /henrekis.json
  def index
    @henrekis = Henreki.all
  end

  # GET /henrekis/1 or /henrekis/1.json
  def show
  end

  # GET /henrekis/new
  def new
    @henreki = Henreki.new
  end

  # GET /henrekis/1/edit
  def edit
  end

  # POST /henrekis or /henrekis.json
  def create
    @henreki = Henreki.new(henreki_params)

    respond_to do |format|
      if @henreki.save
        format.html { redirect_to henreki_url(@henreki), notice: "Henreki was successfully created." }
        format.json { render :show, status: :created, location: @henreki }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @henreki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /henrekis/1 or /henrekis/1.json
  def update
    respond_to do |format|
      if @henreki.update(henreki_params)
        format.html { redirect_to henreki_url(@henreki), notice: "Henreki was successfully updated." }
        format.json { render :show, status: :ok, location: @henreki }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @henreki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /henrekis/1 or /henrekis/1.json
  def destroy
    @henreki.destroy!

    respond_to do |format|
      format.html { redirect_to henrekis_url, notice: "Henreki was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_henreki
      @henreki = Henreki.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def henreki_params
      params.require(:henreki).permit(:name)
    end
end
