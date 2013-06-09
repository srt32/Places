class Question < ActiveRecord::Base
  attr_accessible :email, :question

  validates :email, :question, :presence => :true
end
