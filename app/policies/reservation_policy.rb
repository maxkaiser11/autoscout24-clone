class ReservationPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.joins(vehicle: :user).where(vehicle: { user_id: user.id }).or(scope.where(user_id: user.id))
    end
  end

  def index?
    record.user == user
  end

  def show?
    record.user == user
  end

  def new?
    record.user == user
  end

  def create?
    new?
  end

  def edit?
    record.user == user
  end

  def update?
    edit?
  end

  def destroy?
    record.user == user
  end

  def accept?
    user == record.vehicle.user
  end
end
