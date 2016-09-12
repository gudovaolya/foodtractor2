class ApplicationController < ActionController::Base
  
  before_action :configure_permited_parameters, if: :devise_controller?  
  protect_from_forgery with: :exception


  def access_denied(exception)
    flash[:danger] = exception.message
    redirect_to root_path
  end

    
  private  
  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :adress])
  end
end
