require 'rails_helper'

RSpec.describe "dishes/edit", type: :view do
  before(:each) do
    @dish = assign(:dish, Dish.create!(
      name: "MyString",
      price: 1,
      dish_type: 'beverage'
    ))
  end

  it "renders the edit food form" do
    render

    assert_select "form[action=?][method=?]", dish_path(@dish), "post" do

      assert_select "input[name=?]", "dish[name]"

      assert_select "input[name=?]", "dish[price]"

      assert_select "input[name=?]", "dish[dish_type]"
    end
  end
end
