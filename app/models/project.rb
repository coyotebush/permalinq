class Project < ActiveRecord::Base
  has_many :relevances
  has_many :events, :through => :relevances, :order => "date DESC"

  default_scope order('name ASC')
  scope :popular, :order => 'updated_at DESC', :limit => 3

  attr_accessible :description, :name

  def self.fake_related
    [{ :name => 'Permasite', :group => 'UMass',
      :description => 'A nationally recognized permaculture garden.' },
     { :name => 'Food Forest', :group => 'Transition SLO',
      :description => 'A great project.' }]
  end
end
