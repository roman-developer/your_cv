class ProfilesController < ApplicationController
	before_action :authenticate_user!
	before_action :load_profile, only: [:show, :edit, :update]

	def show ; end

	def new
		@profile = Profile.new
	end

	def create
		@profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      flash[:notice] = "Has creado un nuevo Perfil"
      redirect_to authenticated_root_path
    else
      render :new
    end
	end

	def edit ; end

	def update
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