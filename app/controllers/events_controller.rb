class EventsController < ApplicationController
  def index
    @events = Event.all
    render json: @events
  end

  def show
    @event = Event.where(id: params[:id])
    render json: @event
  end
end
