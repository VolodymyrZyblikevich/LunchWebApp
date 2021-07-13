require 'rails_helper'

RSpec.describe "dishes/new", type: :view do
  before(:each) do
    assign(:dish, Dish.new(
      name: "MyString",
      price: 1,
      category: "MyString"
    ))
  end

  it "renders new food form" do
    render

    assert_select "form[action=?][method=?]", dishes_path, "post" do

      assert_select "input[name=?]", "dish[name]"

      assert_select "input[name=?]", "dish[price]"

      assert_select "input[name=?]", "idsh[category]"
    end
  end
end
