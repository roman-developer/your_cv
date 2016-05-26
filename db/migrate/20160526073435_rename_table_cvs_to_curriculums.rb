class RenameTableCvsToCurriculums < ActiveRecord::Migration
  def change
    rename_table :cvs, :curriculums
    rename_column :educations, :cv_id, :curriculum_id
    rename_column :experiences, :cv_id, :curriculum_id
    rename_column :courses, :cv_id, :curriculum_id
  end 
end
