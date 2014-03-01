class CreateProviders < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TABLE providers (
        id INT(11) NOT NULL AUTO_INCREMENT,
        d_start_cooperation DATE,
        name VARCHAR(255),
        address VARCHAR(500),
        phone VARCHAR(30),
        payment_account DECIMAL,
        PRIMARY KEY (id)
      ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE providers;
    SQL
  end
end
