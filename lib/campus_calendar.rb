module CampusCalendar
	def self.included(controller)
		controller.send :helper_method, :isSchoolOpen, :travelDates, :schoolDates
	end

	def isSchoolOpen(trip,stop)
		# need to get the days where the school is closed --> schoolDates(school)
		# get travel dates --> travelDates(trip)
		# is there a match?
		# travelDates(trip) --> travelDays
		# schoolDates(school) --> closedDays
		travelDays = travelDates(trip)
		closedDays = schoolDates(stop)
		overlap = travelDays & closedDays
		overlap.count > 0 ? false : true
	end

	def schoolDates(stop)
		# need to get the dates when school is closed
		# closedDays = # make an array of all the closed dates (school.holidays)
		@school = stop.school
		holidays = @school.holidays
		closedDays = []
		holidays.each do |h|
			h_start = h.start_date
			h_end = h.end_date
			closedDays = (h_start..h_end).to_a
		end
		return closedDays
	end

	def travelDates(trip)
    # need to get the dates included in the trips
    trip = @trip
    trip_start = trip.date_start
    trip_end = trip.date_end
    # travelDays = []
    travelDays = (trip_start..trip_end).to_a
   	return travelDays
  end
end