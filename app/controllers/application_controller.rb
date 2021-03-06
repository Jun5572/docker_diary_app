class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	protected

		def configure_permitted_parameters
			devise_parameter_sanitizer.permit(:sign_up, keys:[ :username])
			devise_parameter_sanitizer.permit(:sign_in, keys:[ :username])
		end
end
