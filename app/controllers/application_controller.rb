class ApplicationController < ActionController::Base
	include ControllerYelp
	include CampusCalendar
	include TourSchedule
  protect_from_forgery
end
