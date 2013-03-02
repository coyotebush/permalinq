class Relevance < ActiveRecord::Base
  belongs_to :project
  belongs_to :event
  # attr_accessible :title, :body
end
