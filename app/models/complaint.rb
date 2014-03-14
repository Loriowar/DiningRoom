class Complaint < ActiveRecord::Base

  attr_accessible :theme, :description, :client_id

  validates :description, presence: true

  belongs_to :client
end