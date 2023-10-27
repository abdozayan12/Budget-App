require 'rails_helper'

RSpec.describe 'Categories index' do
  before :each do
    visit unauthenticated_root_path
  end

  it ' see the Getting Started ' do
    expect(page).to have_content('Getting Started')
  end

  it ' see the Sign In Now ' do
    expect(page).to have_content('Sign In Now')
  end
end
