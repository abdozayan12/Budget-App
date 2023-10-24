class Group < ApplicationRecord
  belongs_to :user
  has_many :entity_groups, dependent: :destroy
end
