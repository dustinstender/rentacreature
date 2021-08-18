class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    record.user == user
  end

  def new?
    record.creature.user != user
  end

  def create?
    new?
  end

  def destroy?
    record.user == user
  end
end
