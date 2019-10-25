class SessionController < ApplicationController
  def new
      @error_message = flash[:error] # if there is an error, we can now display it in the form
  end

  def create
  user = User.find_by :email => params[:email] 
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = 'Invalid credentials' # add a flash message to later be used by the view
      redirect_to '/login'
    end
  end

  def destroy
      session[:user_id] = nil
  redirect_to '/'
  end
end
