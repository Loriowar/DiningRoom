class CreateCheques < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TABLE cheques (
        id INT(11) NOT NULL AUTO_INCREMENT,
        cheque_id INT(11),
        dish_id INT(11),
        created_at DATETIME,
        PRIMARY KEY (id)
      ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE cheques;
    SQL
  end
end
