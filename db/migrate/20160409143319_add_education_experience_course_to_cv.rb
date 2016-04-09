class AddEducationExperienceCourseToCv < ActiveRecord::Migration
  def change
  	add_reference :cvs, :education, index: true
  	add_reference :cvs, :experience, index: true
  	add_reference :cvs, :course, index: true
  	add_reference :cvs, :user, index: true
  end
end
