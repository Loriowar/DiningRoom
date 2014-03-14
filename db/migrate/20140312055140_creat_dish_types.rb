class CreatDishTypes < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TABLE dish_types (
        id INT(11) NOT NULL AUTO_INCREMENT,
        name VARCHAR(255),
        PRIMARY KEY (id)
      ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE dish_types;
    SQL
  end
end
