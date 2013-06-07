module TourSchedule
	def self.included(controller)
		controller.send :helper_method, :matchingTours, 
						:tourDays, :tripDOW, :convertWDayToDOW
	end

	def matchingTours(trip,stop)
		tripDOW = tripDOW(trip)
		tourDOW = tourDays(stop)
		overlap = tripDOW & tourDOW
		overlap.count > 0 ? true : false
	end

	def convertWDayToDOW(wDayString)
		days = wDayString
		dow = []
		days.each do |d|
			dow << Date::DAYNAMES[d]
		end
		return dow
	end

	def tourDays(stop)
		@school = stop.school
		tours = @school.tours
		tourDays = []
		# loop through each tour and append 
			# the correct DOW if the boolean is true for that day
		tours.each do |t| 
			t.m == true ? tourDays << 1 : nil
			t.t == true ? tourDays << 2 : nil
			t.w == true ? tourDays << 3 : nil
			t.r == true ? tourDays << 4 : nil
			t.f == true ? tourDays << 5 : nil
			t.sa == true ? tourDays << 6 : nil
			t.su == true ? tourDays << 0 : nil
		end
		return tourDays
	end

	def tripDOW(trip)
		travelDays = travelDates(trip)
		travelDOW = []
		travelDays.each do |d|
			travelDOW << d.wday
		end
		return travelDOW
	end

end