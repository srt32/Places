class Tour < ActiveRecord::Base
  attr_accessible :description, :end_time, :f, :m, :name, :r, :sa, :school_id, :start_time, :su, :t, :w
  belongs_to :school
end
