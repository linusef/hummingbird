class Project < ActiveRecord::Base
	validates :name, presence: true
	has_many :reports
end
