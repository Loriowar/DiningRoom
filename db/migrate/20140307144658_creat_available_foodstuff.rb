class CreatAvailableFoodstuff < ActiveRecord::Migration

  def up
    execute <<-SQL
      CREATE TABLE available_foodstuff (
        id INT(11) NOT NULL AUTO_INCREMENT,
        date DATE,
        foodstuff_id INT(11),
        PRIMARY KEY (id)
      ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE available_foodstuff;
    SQL
  end
end
