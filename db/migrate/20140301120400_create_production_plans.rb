class CreateProductionPlans < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TABLE production_plans (
        id INT(11) NOT NULL AUTO_INCREMENT,
        d_execution DATE,
        dish_id INT(11),
        amount INT,
        PRIMARY KEY  (id)
      ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE production_plans;
    SQL
  end
end
