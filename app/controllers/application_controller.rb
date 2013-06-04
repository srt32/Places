class ApplicationController < ActionController::Base
	include ControllerYelp
	include CampusCalendar
  protect_from_forgery
end
