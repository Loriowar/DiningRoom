class Cheque < ActiveRecord::Base

  attr_accessible :cheque_id, :dish_id, :created_at

  validates :cheque_id, presence: true
  validates :dish_id, presence: true

  before_create :fill_default

  belongs_to :dish

  def fill_default
    self.created_at = DateTime.now
  end

  class<<self

    def create_cheque(dish_names, delimiter = ',')
      dish_name_list = dish_names.split(delimiter).collect{|el| el.strip}

      dish_ids_list = dish_name_list.collect{|name| Dish.where(name: name).first}.compact.collect(&:id)

      dish_ids_string = dish_ids_list.join(',')

      if dish_ids_string.present?
        transaction do
          ActiveRecord::Base.connection.execute("CALL explode_table('#{dish_ids_string}');")
        end
      end
    end

    def list_of_cheque_numbers
      self.select(:cheque_id).uniq.pluck(:cheque_id)
    end

    def dish_list_by_cheque_number(cheque_id)
      self.where(cheque_id: cheque_id).collect(&:dish)
    end

    def sum_by_cheque(cheque_id)
      self.dish_list_by_cheque_number(cheque_id).collect{|rec| rec.menu.last.price}.sum
    end

  end
end