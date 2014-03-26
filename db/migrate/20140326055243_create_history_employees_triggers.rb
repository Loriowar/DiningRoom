class CreateHistoryEmployeesTriggers < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE TRIGGER       INSERT_ON_employees
                     AFTER INSERT ON employees
      FOR EACH ROW INSERT INTO
      history_employees (employee_id,     last_name,     first_name,     patronymic_name,     d_hiring,     appointment_id,    event, created_at )
                 VALUES (     NEW.id, NEW.last_name, NEW.first_name, NEW.patronymic_name, NEW.d_hiring, NEW.appointment_id, 'create',      NOW() );
    SQL

    execute <<-SQL
      CREATE TRIGGER       UPDATE_ON_employees
                     AFTER UPDATE ON employees
      FOR EACH ROW INSERT INTO
      history_employees (employee_id,     last_name,     first_name,     patronymic_name,     d_hiring,     appointment_id,    event, created_at )
                 VALUES (     NEW.id, NEW.last_name, NEW.first_name, NEW.patronymic_name, NEW.d_hiring, NEW.appointment_id, 'update',      NOW() );
    SQL

    execute <<-SQL
      CREATE TRIGGER       DELETE_ON_employees
                     AFTER DELETE ON employees
      FOR EACH ROW INSERT INTO
      history_employees (employee_id,     last_name,     first_name,     patronymic_name,     d_hiring,     appointment_id,    event, created_at )
                 VALUES (     OLD.id, OLD.last_name, OLD.first_name, OLD.patronymic_name, OLD.d_hiring, OLD.appointment_id, 'delete',      NOW() );
    SQL
  end

  def down
    execute <<-SQL
      DROP TRIGGER INSERT_ON_employees;
    SQL

    execute <<-SQL
      DROP TRIGGER UPDATE_ON_employees;
    SQL

    execute <<-SQL
      DROP TRIGGER DELETE_ON_employees;
    SQL
  end
end
