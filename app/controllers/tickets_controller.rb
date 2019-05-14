class TicketsController < ApplicationController
  before_action :set_ticket

  def index
    @tickets = current_user.tickets
    json_response(@tickets)
  end

  def show
    json_response(@ticket)
  end

  private

  def set_ticket
    @ticket = current_user.tickets.find(params[:id])
  end
end
