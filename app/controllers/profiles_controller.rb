class ProfilesController < ApplicationController
	before_action :authenticate_user!
	before_action :load_profile, only: [:show, :edit, :update]

	def show ; end

	def new
	end

	def create
	end

	def edit ; end

	def update
		#u.avatar = params[:file]
 		if @profile.update_attributes(profile_params)
      redirect_to profile_path(@profile), notice: 'Tu perfil ha sido actualizado con éxito'
    else
      render :edit
    end
	end

	private
	def profile_params
		params.require(:profile).permit!
	end

	def load_profile
		@profile = Profile.find(params[:id])
	end

end