class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # NEVER EVER EVER DO THAT------
  # helper_method :all
  # NEVER EVER EVER DO THAT------

end
