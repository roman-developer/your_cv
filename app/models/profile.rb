class Profile < ActiveRecord::Base

	belongs_to :user

	mount_uploader :avatar, AvatarUploader

	def full_name
		self.name + " " + self.last_name
	end

end