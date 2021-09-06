 require 'rails_helper'

 RSpec.describe "/dishes", type: :request do

   let(:valid_attributes) {
     skip("Add a hash of attributes valid for your model")
   }

   let(:invalid_attributes) {
     skip("Add a hash of attributes invalid for your model")
   }

   describe "GET /index" do
     it "renders a successful response" do
       Dish.create! valid_attributes
       get dishes_url
       expect(response).to be_successful
     end
   end

   describe "GET /show" do
     it "renders a successful response" do
       dish = Dish.create! valid_attributes
       get dish_url(dish)
       expect(response).to be_successful
     end
   end

   describe "GET /new" do
     it "renders a successful response" do
       get new_dish_url
       expect(response).to be_successful
     end
   end

   describe "GET /edit" do
     it "render a successful response" do
       dish = Dish.create! valid_attributes
       get edit_dish_url(dish)
       expect(response).to be_successful
     end
   end

   describe "POST /create" do
     context "with valid parameters" do
       it "creates a new Dish" do
         expect {
           post dishes_url, params: { dish: valid_attributes }
         }.to change(Dish, :count).by(1)
       end

       it "redirects to the created dish" do
         post dishes_url, params: { dish: valid_attributes }
         expect(response).to redirect_to(dish_url(Dish.last))
       end
     end

     context "with invalid parameters" do
       it "does not create a new dish" do
         expect {
           post dishes_url, params: { dish: invalid_attributes }
         }.to change(Dish, :count).by(0)
       end

       it "renders a successful response (i.e. to display the 'new' template)" do
         post dishes_url, params: { dish: invalid_attributes }
         expect(response).to be_successful
       end
     end
   end

   describe "PATCH /update" do
     context "with valid parameters" do
       let(:new_attributes) {
         skip("Add a hash of attributes valid for your model")
       }

       it "updates the requested dish" do
         dish = Dish.create! valid_attributes
         patch dish_url(dish), params: { dish: new_attributes }
         dish.reload
         skip("Add assertions for updated state")
       end

       it "redirects to the dish" do
         dish = Dish.create! valid_attributes
         patch dish_url(dish), params: { dish: new_attributes }
         dish.reload
         expect(response).to redirect_to(dish_url(dish))
       end
     end

     context "with invalid parameters" do
       it "renders a successful response (i.e. to display the 'edit' template)" do
         dish = Dish.create! valid_attributes
         patch dish_url(dish), params: { dish: invalid_attributes }
         expect(response).to be_successful
       end
     end
   end

   describe "DELETE /destroy" do
     it "destroys the requested dish" do
       dish = Dish.create! valid_attributes
       expect {
         delete dish_url(dish)
       }.to change(Dish, :count).by(-1)
     end

     it "redirects to the dishes list" do
       dish = Dish.create! valid_attributes
       delete dish_url(dish)
       expect(response).to redirect_to(dishes_url)
     end
   end
 end
