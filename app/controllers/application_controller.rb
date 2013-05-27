class ApplicationController < ActionController::Base
	include ControllerYelp
  protect_from_forgery
end
