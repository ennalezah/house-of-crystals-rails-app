module DeviseWhitelist
  extend ActiveSupport::Concern
  
  included do 
    # run method only if it's receiving device controller communication - allows name to be passed in as params for new and edit user
    before_action :configure_permitted_parameters, if: :devise_controller?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end