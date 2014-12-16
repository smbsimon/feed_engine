require 'rails_helper'

describe 'authenticated user' do
include Capybara::DSL

  it 'visits dashboard' do
    visit '/dashboard'
    expect(page).to have_content "Welcome"
  end

  it 'can create custom streak' do
    visit '/dashboard'
    expect(page).to have_css('#create-custom')
    click_on('#create-custom')
  end
  
end