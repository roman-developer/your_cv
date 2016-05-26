class Curriculum < ActiveRecord::Base

	belongs_to :user
	has_many :educations
	has_many :experiences
	has_many :courses

	accepts_nested_attributes_for :educations, :experiences, :courses


end