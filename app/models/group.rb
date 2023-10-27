class Group < ApplicationRecord
  belongs_to :user
  has_many :entity_groups, dependent: :destroy
  has_many :entities, through: :entity_groups

  validates :name, :icon, presence: true
end
