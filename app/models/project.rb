class Project < ActiveRecord::Base
	has_many :project_images
	accepts_nested_attributes_for :project_images
	validates :name, :description, :priority, presence: true

	def self.order_by_priority
		order(priority: :asc)
	end
end
