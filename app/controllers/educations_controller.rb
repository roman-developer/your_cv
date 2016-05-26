class EducationsController < ApplicationController
	before_action :authenticate_user!

	def create
		@education = Education.new(education_params)
		if @education.save
      render json: @education
    else
      render json: @education.errors, status: :unprocessable_entity
    end
  end

  private
  def education_params
  	params.require(:education).permit!
  end

end