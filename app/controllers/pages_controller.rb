class PagesController < ApplicationController
    def home
        @content = 'Do you record your health info today?'
        @user = User.all
        @location = Location.all
        @logged_in_user = User.find_by :id => session[:user_id]
    end
end

