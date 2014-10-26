class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :authenticate_user!
  before_action :set_locale
  
  def set_locale
    I18n.locale = ( params[ :locale ] || I18n.default_locale )
  end
  
  rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render( { :text => exception, :status => 500 } )
  end
end
