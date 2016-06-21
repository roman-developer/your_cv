class Profile < ActiveRecord::Base

	belongs_to :user

	def full_name
		self.name + " " + self.last_name
	end

end