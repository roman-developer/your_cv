class CreateEducation < ActiveRecord::Migration
  def change
    create_table :educations do |t|
    	t.string :degree
    	t.string :study_center
    	t.date :start_date
    	t.date :end_date
    	t.references :cv, index: true
    	t.timestamp
    end
  end
end
