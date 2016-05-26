class CurriculumsController < ApplicationController
	before_action :authenticate_user!

  def new
    @curriculum = Curriculum.new
    @curriculum.educations.build
    @curriculum.experiences.build
    @curriculum.courses.build
  end
  
  def create
    @curriculum = Curriculum.new(cv_params)

    if @curriculum.save
      flash[:notice] = "Has creado un nuevo CV"
      redirect_to authenticated_root_path
    else
      render :new
    end
  end

  def show
    @curriculum = Curriculum.find(params[:id])
    @educations = Education.where(curriculum: @curriculum)
    @experiences = Experience.where(curriculum: @curriculum)
    @courses = Course.where(curriculum: @curriculum)
  end

  # def edit
  #   @entity_categories = EntityCategory.all
  # end

  # def update
  #   if @entity.update_attributes(entity_params)
  #     redirect_to entity_path(@entity), notice: 'La entidad ha sido actualizada con éxito'
  #   else
  #     render :edit
  #   end
  # end

	private
	def cv_params
    params.require(:curriculum).permit!
  end  
end