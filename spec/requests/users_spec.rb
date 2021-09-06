require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "authorizable" do
    it 'is database authenticable' do
      user = User.create(
        email: 'test@example.com',
        password: 'password123',
        password_confirmation: 'password123'
      )
      expect(user.valid_password?('password123')).to be_truthy
    end

  end

end
