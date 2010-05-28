class LocationsController < ApplicationController
  def new
    @location = Location.new
  end
  
  def create
    @location = Location.new(params[:location])
    if @location.save
      flash[:notice] = "Successfully created location."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
end
