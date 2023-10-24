class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :entity_groups, dependent: :destroy
  has_many :groups, through: :entity_groups

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
