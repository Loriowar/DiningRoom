class CreateEmployeeShortNameFunction < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE FUNCTION employee_short_name(employee_id INT(11))
      RETURNS VARCHAR(255) CHARSET utf8
      LANGUAGE SQL
      BEGIN
        DECLARE ret VARCHAR(255) CHARSET utf8;
        DECLARE first_name_letter VARCHAR(1) CHARSET utf8;
        DECLARE patronymic_name_letter VARCHAR(1) CHARSET utf8;

        SELECT last_name, LEFT(first_name, 1), LEFT(patronymic_name, 1)
        INTO ret, first_name_letter, patronymic_name_letter
        FROM employees
        WHERE id = employee_id;

        SET ret = CONCAT(ret, ' ', first_name_letter, '.', patronymic_name_letter, '.');
        RETURN ret;
        END;
    SQL
  end

  def down
    execute <<-SQL
       DROP FUNCTION IF EXISTS employee_short_name;
    SQL
  end
end
