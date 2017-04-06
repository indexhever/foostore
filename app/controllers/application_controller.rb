class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  	before_action :set_locale
	protect_from_forgery with: :exception
	include SessionsHelper

	def set_locale
		#I18n.locale = params[:locale] || I18n.default_locale
		# get locale setted on sessions_helper
		I18n.locale = get_locale || I18n.default_locale
	end
end
