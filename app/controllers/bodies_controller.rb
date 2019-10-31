class BodiesController < ApplicationController
    def new
        @body = Body.new
    end
    def index
        @bodies = Body.all
    end
    def create

        form_params = params.require(:body).permit(:weight, :height)

        puts "===================================="
        puts form_params.inspect
        puts "==================================="

        @body = Body.new
        @body.weight = form_params[:weight]
        @body.user_id = session[:user_id]
        @body.save

        redirect_to bodies_path, notice: "Thank you for updating!"  
    end

    private
    def get_create_user_form_params
        params.permit(:weight)
    end
end
