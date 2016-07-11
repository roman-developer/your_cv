class Profile < ActiveRecord::Base

	belongs_to :user

	mount_uploader :avatar, AvatarUploader

	validates :name, :last_name, :age, :phone, presence: true

	def full_name
		self.name + " " + self.last_name if self.name.present? && self.last_name.present?
	end

end