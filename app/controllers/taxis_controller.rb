class TaxisController < ApplicationController
  def index
    @taxis = Taxi.all
  end
  
  def new
    @taxi = Taxi.new
  end
  
  def create
    @taxi = Taxi.new(params[:taxi])
    if @taxi.save
      flash[:notice] = "Successfully created taxi."
      redirect_to taxis_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @taxi = Taxi.find(params[:id])
  end
  
  def update
    @taxi = Taxi.find(params[:id])
    if @taxi.update_attributes(params[:taxi])
      flash[:notice] = "Successfully updated taxi."
      redirect_to taxis_url
    else
      render :action => 'edit'
    end
  end
end
