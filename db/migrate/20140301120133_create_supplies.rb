class CreateSupplies < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TABLE supplies (
      id INT(11) NOT NULL AUTO_INCREMENT,
      provider_id INT(11),
      foodstaff_id INT(11),
      d_delivery DATE,
      amount INT,
      PRIMARY KEY  (id)
    ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE supplies;
    SQL
  end
end
