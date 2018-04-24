class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!, :set_current_user
  around_action :skip_bullet

  before_action :configure_permitted_parameters, if: :devise_controller?

 def configure_permitted_parameters
   # For additional fields in app/views/devise/registrations/new.html.erb
   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :image])

   # For additional in app/views/devise/registrations/edit.html.erb
   devise_parameter_sanitizer.permit(:account_update, keys: [:username])
 end

  def skip_bullet
    Bullet.enable = false
    yield
  ensure
    Bullet.enable = true
  end

  private

  def set_current_user
    Current.user = current_user
  end
end
