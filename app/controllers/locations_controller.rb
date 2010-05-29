class LocationsController < ApplicationController
  def new
    @location = Location.new
  end
  
  def create
    @location = Location.new(params[:location])
    success = @location.save
    respond_to do |format|
      format.html do
        if success
          flash[:notice] = "Successfully created location."
          redirect_to root_url
        else
          render :action => 'new'
        end
      end
      format.json { render :json => {:success => success} }
    end
  end
end
