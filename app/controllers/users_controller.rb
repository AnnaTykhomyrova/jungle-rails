class UsersController < ApplicationController
    def create
      byebug
      @user = User.new(user_params)
  
       if @user.save
        session[:user_id] = @user.id
        redirect_to [:root], notice: 'User has been created!'
      else
        render :new
      end
    end
  
     def new
      @user = User.new
    end
  
     private
  
     def user_params
      params.require(:user).permit(
        :first_name,
        :last_name,
        :email,
        :password,
        :password_confirmation
      )
    end
  end