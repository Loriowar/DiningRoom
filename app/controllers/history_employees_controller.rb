class HistoryEmployeesController < ApplicationController
  def index
    @history_employees = HistoryEmployee.all
  end
end