class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters
  def create
    super
  end

  private
  # よくわからない
  def update_resource(resource, params)
    resource.update_with_password_if_password_present(params)
  end
  def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :username, :password, :password_confirmation, :current_password) }
  end

end