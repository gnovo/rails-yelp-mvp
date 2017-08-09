class Restaurant < ApplicationRecord
	has_many :reviews, dependent: :destroy

  validates :name, inclusion: { in: [1,2,3], allow_nil: false }
  validates :address, uniqueness: true, presence: true
  validates :category, presence: true
  validates :phone_number, presence: true
end
