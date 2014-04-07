class CreateSplitProcedure < ActiveRecord::Migration
  def up
    execute <<-SQL
     CREATE PROCEDURE explode_table(item_list TEXT CHARSET utf8)

      BEGIN

        DECLARE id INT DEFAULT 0;
        DECLARE value TEXT CHARSET utf8;
        DECLARE bound VARCHAR(255) CHARSET utf8;
        DECLARE occurance INT DEFAULT 0;
        DECLARE i INT DEFAULT 0;
        DECLARE splitted_value INT;
        DECLARE done INT DEFAULT 0;
        DECLARE cheque_count INT DEFAULT 0;
        DECLARE cheque_next_number INT DEFAULT 0;

        SET bound = ',';

        SELECT COUNT(*)
        INTO   cheque_count
        FROM   cheques;

        IF(cheque_count > 0) THEN
          SELECT MAX(cheque_id) + 1
          INTO   cheque_next_number
          FROM   cheques;
        END IF;

        DROP TEMPORARY TABLE IF EXISTS temp_table;
        CREATE TEMPORARY TABLE temp_table(
          `value` VARCHAR(255) NOT NULL
        ) ENGINE=Memory CHARACTER SET=utf8;

        SET value = item_list;

        SET occurance = (SELECT LENGTH(value)
                                - LENGTH(REPLACE(value, bound, ''))
                                +1);
        SET i=1;
        WHILE i <= occurance DO
          SET splitted_value =
          (SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(value, bound, i),
                                    LENGTH(SUBSTRING_INDEX(value, bound, i - 1)) + 1), ',', ''));

          INSERT INTO temp_table VALUES (splitted_value);
          INSERT INTO cheques (cheque_id, dish_id, created_at) VALUES (cheque_next_number, splitted_value, NOW());
          SET i = i + 1;

        END WHILE;

      END;
    SQL
  end

  def down
    execute <<-SQL
       DROP PROCEDURE IF EXISTS explode_table;
    SQL
  end
end
