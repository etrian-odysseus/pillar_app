class AdsController < ApplicationController
  def show
    @ad = Ad.find(params[:id])
  end
  
  def new
    @ad = Ad.new
  end
  
  def create
      @ad = Ad.new(user_params)
      if @ad.save
        redirect_to @ad
      else
        render 'new'
      end
    end
    
    private 
    
        def user_params
          params.require(:ad).permit(:company_name, :ad_text)
        end
end
