class SuppliesController < ApplicationController
  before_action :set_supply, only: [:show, :edit, :update, :destroy]

  # GET /supplies
  # GET /supplies.json
  def index
    @supplies = Supplie.all
  end

  # GET /supplies/1
  # GET /supplies/1.json
  def show
  end

  # GET /supplies/new
  def new
    @supply = Supplie.new
  end

  # GET /supplies/1/edit
  def edit
  end

  # POST /supplies
  # POST /supplies.json
  def create
    @supply = Supplie.new(supply_params)

    respond_to do |format|
      if @supply.save
        format.html { redirect_to @supply, notice: 'Supplie was successfully created.' }
        format.json { render action: 'show', status: :created, location: @supply }
      else
        format.html { render action: 'new' }
        format.json { render json: @supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supplies/1
  # PATCH/PUT /supplies/1.json
  def update
    respond_to do |format|
      if @supply.update(supply_params)
        format.html { redirect_to @supply, notice: 'Supplie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplies/1
  # DELETE /supplies/1.json
  def destroy
    @supply.destroy
    respond_to do |format|
      format.html { redirect_to supplies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supply
      @supply = Supplie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supply_params
      params[:supplie]
    end
end
