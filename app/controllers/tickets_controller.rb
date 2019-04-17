class TicketsController < ApplicationController
  def index
    authorize(Ticket)
    @tickets = policy_scope(Ticket.all)
  end

  def show
    @ticket = Ticket.find(params[:id])
    authorize(Ticket)
  end
end
