class AboutController < ApplicationController

  def me
    @logged_in_user = User.find_by :id => session[:user_id]
    # @logged_in_user = @current_user.id
    @bodies = Body.all
  end

  def my_table
    @bodies = Body.all
    @logged_in_user = User.find_by :id => session[:user_id]
    # @bmi = @logged_in_user.initial_weight/@logged_in_user.height/@logged_in_user.height
  end

  def destroy
        @body = Body.find(params[:id])
        @body.destroy
        redirect_to mytable_url
  end

  def setting
    @logged_in_user = User.find_by :id => session[:user_id]
    # @bmi = @logged_in_user.initial_weight/@logged_in_user.height/@logged_in_user.height
  end

  def edit
    @logged_in_user = User.find_by :id => session[:user_id]
  end

   def create
        form_params = get_create_user_form_params()
        @user = User.find_by :id => session[:user_id] 
        @user.save
            redirect_to mytable_url, notice: "Thank you for signing up!"
    end
    private
    def get_create_user_form_params
        params.require(:update_body_info).permit(:weight)
    end
end
