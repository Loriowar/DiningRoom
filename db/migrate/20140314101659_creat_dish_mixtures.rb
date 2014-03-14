class CreatDishMixtures < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TABLE dish_mixtures (
        id INT(11) NOT NULL AUTO_INCREMENT,
        dish_id INT(11),
        foodstuff_id INT(11),
        PRIMARY KEY (id)
      ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE dish_mixtures;
    SQL
  end
end
