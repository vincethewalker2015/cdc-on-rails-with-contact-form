class PagesController < ApplicationController 
   
   def home
      @details = Detail.all
      @projects = Project.all
   end
   
   
    
end