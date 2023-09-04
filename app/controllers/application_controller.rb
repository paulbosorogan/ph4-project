class ApplicationController < ActionController::API
    include ActionController::Cookies 
    before_action :authorize

    def authorize
        
        @curent_user = User.find_by(id: session[:user_id])
        render json: { errors: "Not authorized"}, status: :unauthorized unless @curent_user 
      end

      
end
