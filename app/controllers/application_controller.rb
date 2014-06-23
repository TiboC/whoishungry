class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def flash_class(level)
    case level
        when :notice then "info"
        when :success then "success"
        when :error, :alert then "danger"
    end
  end
  
end
