class MenuController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  # GET /menu
  # GET /menu.json
  def index
    @menu = Menu.all
  end

  # GET /menu/1
  # GET /menu/1.json
  def show
  end

  # GET /menu/new
  def new
    @menu = Menu.new
  end

  # GET /menu/1/edit
  def edit
  end

  # POST /menu
  # POST /menu.json
  def create
    @menu = Menu.new(menu_params)

    respond_to do |format|
      if @menu.save
        format.html { redirect_to @menu, notice: 'Menu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @menu }
      else
        format.html { render action: 'new' }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu/1
  # PATCH/PUT /menu/1.json
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: 'Menu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu/1
  # DELETE /menu/1.json
  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menu_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params[:menu]
    end
end
