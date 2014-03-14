class DishMixture < ActiveRecord::Base

  attr_accessible :dish_id, :foodstuff_id

  validates :dish_id, presence: true
  validates :foodstuff_id, presence: true
  validates :dish_id, uniqueness: {scope: :foodstuff_id}

  belongs_to :dish
  belongs_to :foodstuff

end