class ApplicationController < ActionController::Base
	include ControllerYelp
	include CampusCalendar
	include TourSchedule
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => "Whoops, that's a no no."
  end
end
