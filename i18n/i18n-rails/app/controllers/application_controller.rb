class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :set_locale
 
  def set_locale(locale)
    I18n.locale = params[:locale]
  end
end
