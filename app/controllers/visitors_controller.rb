class VisitorsController < ApplicationController
  def all
    @users = User.column_names 
    @venues = Venue.column_names
    @events = Event.column_names
    @bands = Band.column_names
  end
end
