require 'rails_helper'

RSpec.describe "dishes/new", type: :view do
  before(:each) do
    assign(:dish, Dish.new(
      name: "cake",
      price: 1,
      dish_type: "beverage"
    ))
  end

  it "renders new food form" do
    render

    assert_select "form[action=?][method=?]", dishes_path, "post" do

      assert_select "input[name=?]", "dish[name]"

      assert_select "input[name=?]", "dish[price]"

      assert_select "input[name=?]", "dish[dish_type]"
    end
  end
end
