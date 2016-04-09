class ProfilesController < ApplicationController
	before_action :authenticate_user!

	def show
		@profile = Profile.find(params[:id])
	end

	def new
	end

	def create
	end

end