class VisitorsController < ApplicationController
  def all
    @venues = Venue.column_names
    @events = Event.column_names
    @bands = Band.column_names
  end
end
