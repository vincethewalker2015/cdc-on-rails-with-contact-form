class UsersController < ApplicationController
    
   def index
      @users = User.all
   end
   
   def new
       @user = User.new
   end
   
   def create
      @user = User.new(user_params)
      if @user.save
      session[:user_id] = @user.id
      flash.now[:success] = "User Profile has been created"
      redirect_to user_path(@user) 
      else
      flash.now[:danger] = "Error! Try again"  
      render 'new'
      end
   end
   
   def show
      @user = User.find(params[:id])
   end
   
   def edit
       @user = User.find(params[:id])
   end
   
   def update
      @user = User.find(params[:id])
      if @user.update(user_params)
         flash.now[:success] = "User details updated"
         redirect_to user_path(@user)
      else
         render 'edit'
      end
   end
   
   private
   
   def user_params
      params.require(:user).permit(:name, :email, :password, :password_digest)
   end
    
end
