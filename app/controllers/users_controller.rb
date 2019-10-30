class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def index 
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to index_url
    end

    def create
        form_params = get_create_user_form_params()

        @user = User.new(form_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to mypage_url, notice: "Thank you for signing up!"
            
        else
            render "new"
        end
    end

    private
   
    def get_create_user_form_params
        params.require(:user).permit(:name, :avatar, :email, :gender, :city, :height, :initial_weight, :goal, :password, :password_confirmation)
    end

  
end
