class DishMixturesController < ApplicationController
  before_action :set_dish_mixture, only: [:show, :edit, :update, :destroy]

  # GET /dish_mixtures
  # GET /dish_mixtures.json
  def index
    @dish_mixtures = DishMixture.all
  end

  # GET /dish_mixtures/1
  # GET /dish_mixtures/1.json
  def show
  end

  # GET /dish_mixtures/new
  def new
    @dish_mixture = DishMixture.new
  end

  # GET /dish_mixtures/1/edit
  def edit
  end

  # POST /dish_mixtures
  # POST /dish_mixtures.json
  def create
    @dish_mixture = DishMixture.new(dish_mixture_params)

    respond_to do |format|
      if @dish_mixture.save
        format.html { redirect_to @dish_mixture, notice: 'Dish mixture was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dish_mixture }
      else
        format.html { render action: 'new' }
        format.json { render json: @dish_mixture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dish_mixtures/1
  # PATCH/PUT /dish_mixtures/1.json
  def update
    respond_to do |format|
      if @dish_mixture.update(dish_mixture_params)
        format.html { redirect_to @dish_mixture, notice: 'Dish mixture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dish_mixture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dish_mixtures/1
  # DELETE /dish_mixtures/1.json
  def destroy
    @dish_mixture.destroy
    respond_to do |format|
      format.html { redirect_to dish_mixtures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish_mixture
      @dish_mixture = DishMixture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_mixture_params
      params[:dish_mixture]
    end
end
