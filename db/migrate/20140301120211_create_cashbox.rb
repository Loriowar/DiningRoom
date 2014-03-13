class CreateCashbox < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TABLE cashbox (
        id INT(11) NOT NULL AUTO_INCREMENT,
        employee_id INT(11),
        date DATE,
        profit DECIMAL,
        PRIMARY KEY (id)
      ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE cashbox;
    SQL
  end
end
