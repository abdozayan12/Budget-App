require 'rails_helper'

RSpec.describe Entity, type: :model do
  describe 'entity model' do
    let(:user) { User.create(name: 'John', email: 'john@example.com', password: 'password123') }

    it 'should have an integer author_id' do
      entity = Entity.new(author_id: user.id, name: 'apple', amount: 11)
      entity.author_id = nil
      expect(entity).to_not be_valid
    end

    it 'name should be presence' do
      entity = Entity.new(author_id: user.id, name: 'apple', amount: 11)
      entity.name = nil
      expect(entity).to_not be_valid
    end

    it 'amount should be greater than or equal to zero' do
      entity = Entity.new(author_id: user.id, name: 'apple', amount: 11)
      entity.amount = -1
      expect(entity).to_not be_valid
    end
  end
end
