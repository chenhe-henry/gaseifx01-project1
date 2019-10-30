class BodiesController < ApplicationController
    def new
        @body = Body.new
    end
    def index
        @bodies = Body.all
    end
    def create
        form_params = get_create_user_form_params()
        @body = Body.new
        @body.weight = form_params[:weight]
      if @body.save
        session[:user_id] = @body.user_id
        redirect_to bodyindex_url, notice: "Thank you for updating!"  
      end
    end
    private
    def get_create_user_form_params
        params.permit(:weight)
    end
end
