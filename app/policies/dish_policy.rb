class DishPolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    user.admin?
  end

  def update?
    return true if user.present? && user == record.user
  end

  def destroy?
    return true if user.present? && user == record.user
  end
end