class NewspapersController < ApplicationController
  def show
    @paper = Newspaper.find(params[:id])
  end
  
  def new
    @paper = Newspaper.new
  end
  
  def create
      @paper = Newspaper.new(user_params)
      @ads = Ad.where(:id => params[:ads_for_paper])
      @paper.ads << @ads
      if @paper.save
        redirect_to @paper
      else
        render 'new'
      end
  end
  
  def update
  end
  
    
    private 
    
        def user_params
          params.require(:newspaper).permit(:name)
        end
end
