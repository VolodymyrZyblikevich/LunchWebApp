require 'rails_helper'

RSpec.describe "dishes/index", type: :view do
  before(:each) do
    assign(:dishes, [
      Dish.create!(
        name: "Name",
        price: 2,
        dish_type: "beverage"
      ),
      Dish.create!(
        name: "Name",
        price: 2,
        dish_type: "beverage"
      )
    ])
  end

  # it "renders a list of dishes" do
  #   render
  #   assert_select "tr>td", text: "Name".to_s, count: 2
  #   assert_select "tr>td", text: 2.to_s, count: 2
  #   assert_select "tr>td", text: "dish_type".to_s, count: 2
  # end
end
