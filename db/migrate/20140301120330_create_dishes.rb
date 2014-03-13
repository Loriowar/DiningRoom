class CreateDishes < ActiveRecord::Migration
  def up
          execute <<-SQL
      CREATE TABLE dishes (
        id INT(11) NOT NULL AUTO_INCREMENT,
        name VARCHAR(255),
        calories INT,
        weight INT,
        dish_type_id INT(11),
        PRIMARY KEY (id)
      ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE dishes;
    SQL
  end
end
