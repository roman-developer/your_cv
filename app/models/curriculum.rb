class Curriculum < ActiveRecord::Base

	belongs_to :user
	has_many :educations
	has_many :experiences
	has_many :courses

	#accepts_nested_attributes_for :educations, :experiences, :courses
	accepts_nested_attributes_for :experiences, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :educations, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :courses, reject_if: :all_blank, allow_destroy: true

	validates :mother_tongue, :professional_profile, presence: true

end