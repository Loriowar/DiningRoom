class FoodstuffController < ApplicationController
  before_action :set_foodstuff, only: [:show, :edit, :update, :destroy]

  # GET /foodstuff
  # GET /foodstuff.json
  def index
    @foodstuff = Foodstuff.all
  end

  # GET /foodstuff/1
  # GET /foodstuff/1.json
  def show
  end

  # GET /foodstuff/new
  def new
    @foodstuff = Foodstuff.new
  end

  # GET /foodstuff/1/edit
  def edit
  end

  # POST /foodstuff
  # POST /foodstuff.json
  def create
    @foodstuff = Foodstuff.new(foodstuff_params)

    respond_to do |format|
      if @foodstuff.save
        format.html { redirect_to @foodstuff, notice: 'Foodstuff was successfully created.' }
        format.json { render action: 'show', status: :created, location: @foodstuff }
      else
        format.html { render action: 'new' }
        format.json { render json: @foodstuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodstuff/1
  # PATCH/PUT /foodstuff/1.json
  def update
    respond_to do |format|
      if @foodstuff.update(foodstuff_params)
        format.html { redirect_to @foodstuff, notice: 'Foodstuff was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @foodstuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodstuff/1
  # DELETE /foodstuff/1.json
  def destroy
    @foodstuff.destroy
    respond_to do |format|
      format.html { redirect_to foodstuff_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodstuff
      @foodstuff = Foodstuff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foodstuff_params
      params[:foodstuff]
    end
end
