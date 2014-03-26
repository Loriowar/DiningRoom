class DailyEarning < ActiveRecord::Base

  attr_readonly :daily_earning, :date
end