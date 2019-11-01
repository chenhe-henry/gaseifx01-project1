class AboutController < ApplicationController

  def me
    @logged_in_user = User.find_by :id => session[:user_id]
    # @logged_in_user = @current_user.id
    @bodies = Body.all
    @line_graph_data = Body.where(:user_id => current_user.id).group(:id).sum(:weight)
  end

  def my_table
    @bodies = Body.where(:user_id => session[:user_id]) 
        puts "===================================="
        puts @bodies.inspect
        puts "==================================="
    @logged_in_user = User.find_by :id => session[:user_id]
    @title = 'see how far you have come.';
   
    # @bmi = @logged_in_user.initial_weight/@logged_in_user.height/@logged_in_user.height
  end



  def setting
    @logged_in_user = User.find_by :id => session[:user_id]
    # @line_graph_data = Body.where(:user_id => current_user.id).group(:id).sum(:weight)
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
