class DailyEarningsController < ApplicationController
  def index
    @daily_earnings = DailyEarning.all.to_a
  end
end