class CreateMenu < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TABLE menu (
        id INT(11) NOT NULL AUTO_INCREMENT,
        dish_id INT(11),
        week_day VARCHAR(20),
        price DECIMAL,
        PRIMARY KEY  (id)
      ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE menu;
    SQL
  end
end
