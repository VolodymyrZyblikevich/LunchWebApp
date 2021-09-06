require 'rails_helper'

RSpec.describe 'Updating a dish', type: :feature do
  scenario 'valid inputs' do
    beverage = Dish.create!(name: 'beverage')
    visit edit_dish_path(id: beverage.id)
    fill_in 'Name', with: 'beverage'
    click_on 'Update dish'
    visit dishes_path
    expect(page).to have_content('beverage')
  end
end