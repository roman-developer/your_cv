class ProfilesController < ApplicationController
	before_action :authenticate_user!

	def show
		@profile = Profile.find(params[:id])
		#render component: 'Profile', props: { profile: @profile }, tag: 'span', class: 'profile'
	end

	def new
	end

	def create
	end

end