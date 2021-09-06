class RegistrationsController < Devise::RegistrationsController
  after_action :create_account, only: [:create, :update]


  private
  def create_account
    Account.create(@user)
  end
end
