class CreateFoodstuff < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TABLE foodstuff (
        id INT(11) NOT NULL AUTO_INCREMENT,
        name VARCHAR(255),
        d_created DATETIME,
        PRIMARY KEY (id)
      ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE foodstuff;
    SQL
  end
end
