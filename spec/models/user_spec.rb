require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User model ' do
    it ' is valid with valid attributes ' do
      user = User.new(
        name: 'John Doe',
        email: 'john.doe@example.com',
        password: 'password123'
      )

      expect(user).to be_valid
    end

    it ' name must not be blank' do
      user = User.new(
        email: 'john.doe@example.com',
        password: 'password123'
      )

      expect(user).to_not be_valid
    end

    it ' email must not be blank ' do
      user = User.new(
        name: 'John Doe',
        password: 'password123'
      )

      expect(user).to_not be_valid
    end

    it ' password must not be blank ' do
      user = User.new(
        name: 'John Doe',
        email: 'john.doe@example.com'
      )

      expect(user).to_not be_valid
    end
  end
end
