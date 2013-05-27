module ControllerYelp
	def self.included(controller)
		controller.send :helper_method, :get_yelp_restaurants
	end

	def get_yelp_restaurants(school)
    @name = school.name
    link = "http://www.yelp.com/search?find_desc=restaurant&find_loc=" + @name
  end
end