class Project < ActiveRecord::Base
  has_many :relevances
  has_many :events, :through => :relevances

  attr_accessible :description, :name
end
