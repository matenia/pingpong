class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  if ENV["HTTP_AUTH_NAME"].present?
    http_basic_authenticate_with name: ENV["HTTP_AUTH_NAME"],
                                 password: ENV["HTTP_AUTH_PASSWORD"]
  end
end
