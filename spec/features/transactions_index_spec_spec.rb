require 'rails_helper'

RSpec.describe 'categories index ' do
  include Devise::Test::IntegrationHelpers

  before :each do
    user = User.create(name: 'John', email: 'john@example.com', password: 'password123')
    category = Group.create(user_id: user.id, name: 'food', icon: 'icon')

    # Create some purchase records associated with the category
    transaction1 = Entity.create(author_id: user.id, name: 'Trans 1', amount: 100)
    EntityGroup.create(entity_id: transaction1.id, group_id: category.id)
    transaction2 = Entity.create(author_id: user.id, name: 'Trans 2', amount: 200)
    EntityGroup.create(entity_id: transaction2.id, group_id: category.id)
    transaction3 = Entity.create(author_id: user.id, name: 'Trans 3', amount: 300)
    EntityGroup.create(entity_id: transaction3.id, group_id: category.id)

    sign_in user
    visit category_transactions_path(category_id: category.id)
  end

  it 'see the title in navbar ' do
    expect(page).to have_content('Transaction')
  end

  it 'see the category name ' do
    expect(page).to have_content('food')
  end

  it 'see the total transaction for this category' do
    expect(page).to have_content(600)
  end

  it 'see the all transaction' do
    expect(page).to have_content('Trans 1')
    expect(page).to have_content('100')
    expect(page).to have_content('Trans 2')
    expect(page).to have_content('200')
    expect(page).to have_content('Trans 3')
    expect(page).to have_content('300')
  end

  it 'see the add transaction button ' do
    expect(page).to have_link('ADD TRANSACTION')
  end

  it 'navigates to the new category page when clicking "ADD TRANSACTION"' do
    click_on 'ADD TRANSACTION'
    expect(page).to have_content('New Transaction')
  end
end
