class ChequesController < ApplicationController
  def index
    @cheque_numbers = Cheque.list_of_cheque_numbers
  end

  def new

  end

  def create

  end
end