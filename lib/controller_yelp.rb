module ControllerYelp
	def self.included(controller)
		controller.send :helper_method, :get_yelp_search
	end

	def get_yelp_search(searchType,school)
    @name_raw = school.name
    @name = @name_raw.gsub(/[ ]/, '+')
    link = "http://www.yelp.com/search?find_desc=" + searchType + "&find_loc=" + @name
  end
end