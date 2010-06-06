class TaxisController < ApplicationController
  def index
    @taxis = Taxi.all
    respond_to do |format|
      format.html
      format.json { 
        render :json => {:taxis => @taxis.collect{|t|
          t.attributes.merge(
            :locations => t.locations.find(
              :all, :limit => 5,
              :conditions => ['locations.created_at > ?', 30.minutes.ago],
              :order => 'locations.created_at desc'
            ).collect {|l| {:lon => l.lon.to_f, :lat => l.lat.to_f, :message => l.message}}
          )
        }}
      }
    end
  end
  
  def edit
    @taxi = Taxi.find_by_api_key(params[:id])
    render :text => 'invalid api key' unless @taxi
  end
end
