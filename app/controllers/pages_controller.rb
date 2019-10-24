class PagesController < ApplicationController
    def home
        @content = 'Do you record your health info today?'
    end
end
