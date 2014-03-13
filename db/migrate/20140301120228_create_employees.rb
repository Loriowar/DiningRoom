class CreateEmployees < ActiveRecord::Migration
  def up
    execute <<-SQL

      CREATE TABLE employees (
        id INT(11) NOT NULL AUTO_INCREMENT,
        last_name VARCHAR(255),
        first_name VARCHAR(255),
        patronymic_name VARCHAR(255),
        d_hiring DATE,
        appointment_id INT(11),
        PRIMARY KEY (id)
      ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE employees;
    SQL
  end
end