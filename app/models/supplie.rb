class Supplie < ActiveRecord::Base

  attr_accessible :provider_id, :foodstuff_id, :d_delivery, :amount

  validates :provider_id, presence: true
  validates :foodstuff_id, presence: true
  validates :d_delivery, presence: true
  validates :amount, numericality: {greater_than_or_equal_to: 1}

  belongs_to :provider
  belongs_to :foodstuff

end