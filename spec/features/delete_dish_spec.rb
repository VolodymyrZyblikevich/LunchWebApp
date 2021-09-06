require 'rails_helper'

RSpec.describe 'Deleting a dish', type: :feature do
  scenario 'success' do
    Dish.create!(name: 'beverage')
    visit dishes_path
    expect(page).to have_content('beverage')
    click_on 'Destroy'
    expect(page).not_to have_content('beverage')
  end
end