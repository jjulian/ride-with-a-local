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
              :order => 'locations.created_at desc'
            ).collect(&:attributes)
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
