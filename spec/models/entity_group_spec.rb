require 'rails_helper'

RSpec.describe EntityGroup, type: :model do
  describe 'entity model' do
    let(:user) { User.create(name: 'John', email: 'john@example.com', password: 'password123') }
    let(:entity) { Entity.create(author_id: user.id, name: 'apple', amount: 11) }
    let(:group) { Group.create(user_id: user.id, name: 'food', icon: 'icon') }

    it 'entity_id should be presence' do
      entity_group = EntityGroup.new(entity_id: entity.id, group_id: group.id)
      entity_group.entity_id = nil
      expect(entity_group).to_not be_valid
    end

    it 'group_id should be presence' do
      entity_group = EntityGroup.new(entity_id: entity.id, group_id: group.id)
      entity_group.group_id = nil
      expect(entity_group).to_not be_valid
    end
  end
end
