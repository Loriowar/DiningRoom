class CreateDailyEarningsView < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE VIEW daily_earnings AS
        SELECT SUM(profit) AS daily_earning,
               date
        FROM cashbox
        GROUP BY date;
    SQL
  end

  def down
    execute <<-SQL
      DROP VIEW daily_earnings;
    SQL
  end
end
