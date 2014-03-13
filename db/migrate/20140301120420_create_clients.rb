class CreateClients < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TABLE clients (
        id INT(11) NOT NULL AUTO_INCREMENT,
        last_name VARCHAR(255),
        first_name VARCHAR(255),
        patronymic_name VARCHAR(255),
        contact_phone VARCHAR(30),
        PRIMARY KEY (id)
      ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE clients;
    SQL
  end
end
