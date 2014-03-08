class AvailableFoodstuffController < ApplicationController
  before_action :set_available_foodstuff, only: [:show, :edit, :update, :destroy]

  # GET /available_foodstuff
  # GET /available_foodstuff.json
  def index
    @available_foodstuff = AvailableFoodstuff.all
  end

  # GET /available_foodstuff/1
  # GET /available_foodstuff/1.json
  def show
  end

  # GET /available_foodstuff/new
  def new
    @available_foodstuff = AvailableFoodstuff.new
  end

  # GET /available_foodstuff/1/edit
  def edit
  end

  # POST /available_foodstuff
  # POST /available_foodstuff.json
  def create
    @available_foodstuff = AvailableFoodstuff.new(available_foodstuff_params)

    respond_to do |format|
      if @available_foodstuff.save
        format.html { redirect_to @available_foodstuff, notice: 'Available foodstuff was successfully created.' }
        format.json { render action: 'show', status: :created, location: @available_foodstuff }
      else
        format.html { render action: 'new' }
        format.json { render json: @available_foodstuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /available_foodstuff/1
  # PATCH/PUT /available_foodstuff/1.json
  def update
    respond_to do |format|
      if @available_foodstuff.update(available_foodstuff_params)
        format.html { redirect_to @available_foodstuff, notice: 'Available foodstuff was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @available_foodstuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_foodstuff/1
  # DELETE /available_foodstuff/1.json
  def destroy
    @available_foodstuff.destroy
    respond_to do |format|
      format.html { redirect_to available_foodstuff_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_available_foodstuff
      @available_foodstuff = AvailableFoodstuff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def available_foodstuff_params
      params[:available_foodstuff]
    end
end
