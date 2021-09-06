require 'rails_helper'

RSpec.describe 'Creating a dish', type: :feature do
  scenario 'valid inputs' do
    visit new_dish_path
    fill_in 'Name', with: 'Napoleon'
    fill_in 'Price', with: '24'
    select "2", :from => "dish_type"
    click_on 'Create dish'
    visit dishes_path
    expect(page).to have_content('Napoleon')
  end

  scenario 'invalid inputs Name' do
    visit new_dish_path
    fill_in 'Name', with: ''
    select "2", :from => "dish_type"
    click_on 'Create Dish'
    expect(page).to have_content("Name can't be blank")
  end

  scenario 'invalid inputs price' do
    visit new_dish_path
    fill_in 'Price', with: ''
    select "2", :from => "dish_type"
    click_on 'Create Dish'
    expect(page).to have_content("Name can't be blank")
  end
end