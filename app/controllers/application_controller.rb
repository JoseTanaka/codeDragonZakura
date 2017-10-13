class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def after_sign_in_path_for(resource)
    courses_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
