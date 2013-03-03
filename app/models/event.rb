class Event < ActiveRecord::Base
  has_many :relevances
  has_many :projects, :through => :relevances

  attr_accessible :date, :description, :location, :name, :project_ids
  validates :date, :presence => true
  validates :name, :presence => true
end
