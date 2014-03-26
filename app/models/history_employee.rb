class HistoryEmployee < ActiveRecord::Base

  attr_accessible :employee_id, :last_name, :first_name, :patronymic_name, :d_hiring, :appointment_id, :event, :created_at

  belongs_to :employee
  belongs_to :appointment
  # relation available only for current working employees
  has_many :cashbox, through: :employee

  def event_to_rus_string
    if event == 'create'
      'Создана'
    elsif event == 'update'
      'Обновлена'
    elsif event == 'delete'
      'Удалена'
    end
  end
end