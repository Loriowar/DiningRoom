class ProductionPlansController < ApplicationController
  before_action :set_production_plan, only: [:show, :edit, :update, :destroy]

  # GET /production_plans
  # GET /production_plans.json
  def index
    @production_plans = ProductionPlan.all
  end

  # GET /production_plans/1
  # GET /production_plans/1.json
  def show
  end

  # GET /production_plans/new
  def new
    @production_plan = ProductionPlan.new
  end

  # GET /production_plans/1/edit
  def edit
  end

  # POST /production_plans
  # POST /production_plans.json
  def create
    @production_plan = ProductionPlan.new(production_plan_params)

    respond_to do |format|
      if @production_plan.save
        format.html { redirect_to @production_plan, notice: 'Production plan was successfully created.' }
        format.json { render action: 'show', status: :created, location: @production_plan }
      else
        format.html { render action: 'new' }
        format.json { render json: @production_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /production_plans/1
  # PATCH/PUT /production_plans/1.json
  def update
    respond_to do |format|
      if @production_plan.update(production_plan_params)
        format.html { redirect_to @production_plan, notice: 'Production plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @production_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production_plans/1
  # DELETE /production_plans/1.json
  def destroy
    @production_plan.destroy
    respond_to do |format|
      format.html { redirect_to production_plans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_plan
      @production_plan = ProductionPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def production_plan_params
      params[:production_plan]
    end
end
