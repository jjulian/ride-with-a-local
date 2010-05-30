class LocationsController < ApplicationController
  def create
    @location = Location.new(params[:location])
    render :json => {:success => @location.save}
  end
end
