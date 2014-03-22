class AvailableFoodstuff < ActiveRecord::Base

  attr_accessible :date, :foodstuff_id

  validates :foodstuff_id, presence: true, uniqueness: true
  validates :date, presence: true

  belongs_to :foodstuff

end