module CampusCalendar
	def self.included(controller)
		controller.send :helper_method, :isSchoolOpen, :travelDates, :schoolDates
	end

	def isSchoolOpen(trip,school)
		return true
		# need to get the days where the school is closed
		# then match on travelDates. 
		# if match, provide false
	end

	def schoolDates(school)
		# need to get the dates when school is closed
		closedDates = 
	end

	def travelDates(trip)
    	# need to get the dates included in the trips
    	travelDays = # days between trip.date_start and trip.date_end
  	end
end