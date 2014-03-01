class CreateComplaints < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TABLE complaints (
        id INT(11),
        theme VARCHAR(255),
        description VARCHAR(3000),
        client_id INT(11)
      ) ENGINE=InnoDB CHARACTER SET=utf8;
    SQL
  end

  def down
    execute <<-SQL
      DROP TABLE complaints;
    SQL
  end
end
