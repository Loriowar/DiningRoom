class ChequesController < ApplicationController
  def index
    @cheque_numbers = Cheque.list_of_cheque_numbers
  end

  def new
    @cheque = Cheque.new
  end

  def create
    Cheque.create_cheque(params[:dish_list])

    redirect_to controller: :cheques, action: :index
    return
  end
end