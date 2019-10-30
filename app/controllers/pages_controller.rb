class PagesController < ApplicationController
    def home
        @content = 'Do you record your health info today?'
        @user = User.all
        @logged_in_user = User.find_by :id => session[:user_id]
        @top = User.order(id: :desc).limit(5)
    end

    def about
        @title = 'Welcome to Health tracking app!';
        @content = 'This wonderful app will help you to achieve your goal.';
    end

    def body_measurement
        @title = 'Welcome to body measurement app!';
        @content = 'This is the body measurement app.';
        @logged_in_user = User.find_by :id => session[:user_id]

    end

    def bmi_calculator
        @title = 'Welcome to BMI calculator app!';
        @content = 'This is the BMI calculator app.';
        @bmi_explaination_title = 'What’s BMI?';
        @bmi_explaination = 'BMI compares your weight to your height, 
        and is calculated by dividing your weight (in kilograms) by your height (in metres squared). 
        It gives you an idea of whether you’re "underweight", a "healthy" weight, "overweight", or "obese" for your height. 
        BMI is one type of tool to help health professionals assess the risk for chronic disease.'
    end

    def warriors_gallery
        @title = 'Welcome to warriors gallery app!';
        @content = 'This is the warriors gallery app.';
      
    end

end

