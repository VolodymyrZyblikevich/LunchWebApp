require 'rails_helper'

RSpec.describe "dishes/edit", type: :view do
  before(:each) do
    @food = assign(:food, Food.create!(
      name: "MyString",
      price: 1,
      category: "MyString"
    ))
  end

  it "renders the edit food form" do
    render

    assert_select "form[action=?][method=?]", dish_path(@food), "post" do

      assert_select "input[name=?]", "food[name]"

      assert_select "input[name=?]", "food[price]"

      assert_select "input[name=?]", "food[category]"
    end
  end
end
