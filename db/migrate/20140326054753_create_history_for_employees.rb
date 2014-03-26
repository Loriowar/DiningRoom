class CreateHistoryForEmployees < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TABLE history_employees (
        id INT(11) NOT NULL AUTO_INCREMENT,
        employee_id INT(11),
        last_name VARCHAR(255),
        first_name VARCHAR(255),
        patronymic_name VARCHAR(255),
        d_hiring DATE,
        appointment_id INT(11),
        event VARCHAR(255),
        created_at DATETIME,
        PRIMARY KEY (id)
      ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE history_employees;
    SQL
  end
end
