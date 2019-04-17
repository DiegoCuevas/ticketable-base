class TicketPolicy < ApplicationPolicy
  attr_reader :user, :ticket

  def initialize(user, ticket)
    @user = user
    @ticket = ticket
  end

  def index?
    user.admin? || user.premium? || user.member?
  end

  def show?
    user.admin? || 
    ((ticket.tier == "premium" || ticket.tier == "regular") && user.premium?) || 
    (ticket.tier == "regular" && user.member?)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if user.admin?
        scope.all
      elsif user.premium?
        scope.where.not(tier: "press")
      elsif user.member? 
        scope.where(tier: "regular")
      end
    end
  end
end