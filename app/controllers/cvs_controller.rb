class CvsController < ApplicationController
	before_action :authenticate_user!

  def new
    @cv = Cv.new
  end
  
  def create
    @cv = Cv.new(cv_params)
    if @cv.save
      flash[:notice] = "Has creado un nuevo CV"
      redirect_to home_path
    else
      render :new
    end
  end

	private
	def cv_params
    params.require(:cv).permit!
  end  
end