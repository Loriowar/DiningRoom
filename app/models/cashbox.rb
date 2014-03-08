class Cashbox < ActiveRecord::Base

  attr_accessible :employee_id, :date, :profit

  validates :employee_id, presence: true
  validates :profit, numericality: {greater_than_or_equal_to: 0}

  before_create :fill_default

  belongs_to :employee

  def fill_default
    self.date = DateTime.now
  end


end