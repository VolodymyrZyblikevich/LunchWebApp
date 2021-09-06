require 'rails_helper'

RSpec.describe "dishes/show", type: :view do
  before(:each) do
    @dish = assign(:dish, Dish.create!(
      name: "Name",
      price: 2.3,
      dish_type: 'beverage'
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Category/)
  end
end
