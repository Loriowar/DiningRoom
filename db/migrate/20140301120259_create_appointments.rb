class CreateAppointments < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TABLE appointments (
        id INT(11) NOT NULL AUTO_INCREMENT,
        name VARCHAR(255),
        salary DECIMAL,
        PRIMARY KEY  (id)
      ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE appointments;
    SQL
  end
end
