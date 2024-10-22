class AutomakersController < ApplicationController
  before_action :set_automaker, only: %i[ show edit update destroy ]

  # GET /automakers or /automakers.json
  def index
    @automakers = Automaker.all
  end

  # GET /automakers/1 or /automakers/1.json
  def show
  end

  # GET /automakers/new
  def new
    @automaker = Automaker.new
  end

  # GET /automakers/1/edit
  def edit
  end

  # POST /automakers or /automakers.json
  def create
    @automaker = Automaker.new(automaker_params)

    respond_to do |format|
      if @automaker.save
        format.html { redirect_to @automaker, notice: "Automaker was successfully created." }
        format.json { render :show, status: :created, location: @automaker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @automaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /automakers/1 or /automakers/1.json
  def update
    respond_to do |format|
      if @automaker.update(automaker_params)
        format.html { redirect_to @automaker, notice: "Automaker was successfully updated." }
        format.json { render :show, status: :ok, location: @automaker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @automaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /automakers/1 or /automakers/1.json
  def destroy
    @automaker.destroy!

    respond_to do |format|
      format.html { redirect_to automakers_path, status: :see_other, notice: "Automaker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_automaker
      @automaker = Automaker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def automaker_params
      params.require(:automaker).permit(:name, :country, :fundation_year)
    end
end
