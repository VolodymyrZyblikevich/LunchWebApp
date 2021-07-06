class FoodPolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    user.present?
  end

  def update?
    return true if user.present? && user == food.user
  end

  def destroy?
    return true if user.present? && user == food.user
  end

  private

  def food
    record
  end
end