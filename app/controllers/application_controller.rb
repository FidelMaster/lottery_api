class ApplicationController < ActionController::API
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up){|u| u.permit(:email, :password, :admin )}
    end
end
