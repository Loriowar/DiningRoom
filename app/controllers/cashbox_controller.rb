class CashboxController < ApplicationController
  before_action :set_cashbox, only: [:show, :edit, :update, :destroy]

  # GET /cashbox
  # GET /cashbox.json
  def index
    @cashbox = Cashbox.all
  end

  # GET /cashbox/1
  # GET /cashbox/1.json
  def show
  end

  # GET /cashbox/new
  def new
    @cashbox = Cashbox.new
  end

  # GET /cashbox/1/edit
  def edit
  end

  # POST /cashbox
  # POST /cashbox.json
  def create
    @cashbox = Cashbox.new(cashbox_params)

    respond_to do |format|
      if @cashbox.save
        format.html { redirect_to @cashbox, notice: 'Cashbox was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cashbox }
      else
        format.html { render action: 'new' }
        format.json { render json: @cashbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cashbox/1
  # PATCH/PUT /cashbox/1.json
  def update
    respond_to do |format|
      if @cashbox.update(cashbox_params)
        format.html { redirect_to @cashbox, notice: 'Cashbox was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cashbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashbox/1
  # DELETE /cashbox/1.json
  def destroy
    @cashbox.destroy
    respond_to do |format|
      format.html { redirect_to cashbox_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashbox
      @cashbox = Cashbox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cashbox_params
      params[:cashbox]
    end
end
