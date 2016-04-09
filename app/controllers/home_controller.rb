class HomeController < ApplicationController
	before_action :authenticate_user!

	def index
		@user = current_user
		@cvs = Cv.where(user_id: current_user)
	end

end