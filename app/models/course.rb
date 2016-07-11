class Course < ActiveRecord::Base

	belongs_to :curriculum

	validates :hours, numericality: { only_integer: true }

end