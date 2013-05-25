class Trip < ActiveRecord::Base
  attr_accessible :date_end, :date_start, :name, :notes, :user_id
  belongs_to :user
end
