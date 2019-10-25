class PagesController < ApplicationController
    def home
        @content = 'Do you record your health info today?'
        @user = User.all
        @location = Location.all
        @logged_in_user = User.find_by :id => session[:user_id]
    end

    def about
        @title = 'Welcome to health tracking app!';
        @content = 'This wonderful app will help you to achieve your goal.';
    end

    def body_measurement
        @title = 'Welcome to body measurement app!';
        @content = 'This is the body measurement app.';
    end

    def bmi_calculator
        @title = 'Welcome to BMI calculator app!';
        @content = 'This is the BMI calculator app.';
    end

    def warriors_gallery
        @title = 'Welcome to warriors gallery app!';
        @content = 'This is the warriors gallery app.';
    end

    
end

