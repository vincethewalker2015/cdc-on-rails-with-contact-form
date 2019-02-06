class DetailsController < ApplicationController
    
    
   def index
      @details = Detail.all
   end
   
   def new
       @detail = Detail.new
   end
   
   def create
      @detail = Detail.new(detail_params)
      @detail.user = current_user
      if @detail.save
      flash[:success] = "Owner details created"
      redirect_to detail_path(@detail) 
      else
      render 'new'
      end
   end
   
   def show
      @detail = Detail.find(params[:id])
   end
   
   def edit
      @detail = Detail.find(params[:id])
   end
   
   def update
      @detail = Detail.find(params[:id])
      if @detail.update(detail_params)
         flash.now[:success] = "Details updated"
         redirect_to detail_path(@detail)
      else
         render 'edit'
      end
   end
   
   private
   
   def detail_params
      params.require(:detail).permit(:name, :description, :picture)
   end 
end