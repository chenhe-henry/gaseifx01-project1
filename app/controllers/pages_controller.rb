class PagesController < ApplicationController

    def test

    end

    def home
        @content = 'Do you record your health info today?'
        @user = User.all
        @logged_in_user = User.find_by :id => session[:user_id]
        @top = User.order(id: :desc).limit(5)
    end

    def about
        @title = 'Welcome to Health Tracking!';
        @content = 'This wonderful app will help you to achieve your goal easier.';
        @section = 'Achieving and maintaining a healthy lifestyle can be a challenge for many people as the busy nature of many lives means they often fall into bad habits because of their ease or speed. This means that people across the country often push their health to one side by grabbing meals without thinking about the nutritious quality of them, while exercise can also become irregular or non-existent.

Tracking your health can make maintaining a healthy lifestyle much easier for the growing number of people that find it difficult to balance work, life and wellbeing. Health tracking, like with the dacadoo healthscore, can give you a tangible way to improve your lifestyle choices, which will in turn better your health in the long term.

Unlike many other weight loss-focused apps, systems that track your health by asking you about your food, sleep and stress habits incorporate the whole picture of what makes a healthy lifestyle. This encourages you to change your decisions and will help you improve your wellbeing for the long term, rather than to just working towards a short-term goal like losing a certain amount of weight.

Tracks your progress
By being able to enter and keep a record of your health and wellbeing over the past week, month or year, it is far easier to keep an eye on your good and bad habits. This means that training for a marathon, Iron Man, or any other physical challenge that you have set yourself becomes much easier as you are able to keep an eye on your progress and see how far you have come.

Being able to see your progress can also help you to achieve smaller goals that are more focused on improving your general health, rather than completing a one-off ambition.

Encourages competition
Inputting your personal data, tracking your activity and your subsequent progress can encourage you and your colleagues or friends to be competitive with each other. By being able to see what your peers are doing, you are likely to be more encouraged to reach and surpass your own exercise goals to keep on track with them, and to make sure you don’t look like the weak link in your office or friendship group.

Having the progress and achievements of your peers will increase your self-motivation as even those who aren’t particularly competitive don’t want to be embarrassed or left looking the most unfit when compared to everyone else.

Maintains your health
Tracking your health encourages you to keep and maintain good eating, sleeping and activity habits over a longer period of time. By being able to see in figures that you have kept good practices for the past two months, you are more likely to maintain these methods in the future.

In order to improve your health, it’s important that you keep good habits in the long term to ensure that you reap the benefits of a healthy lifestyle, rather than just doing it over a short period to achieve a one-off target.'
    end

    # def body_measurement_public
    #     @title = 'Welcome to body measurement app!';
    #     @content = 'This is the body measurement app.';
    #     @logged_in_user = User.find_by :id => session[:user_id]
    # end

    def body_measurement_public

        if current_user
            redirect_to '/body_measurement'
      
        end
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

