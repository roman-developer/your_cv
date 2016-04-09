class CreateCourse < ActiveRecord::Migration
  def change
    create_table :courses do |t|
    	t.string :name
    	t.string :study_center
    	t.integer :hours
    	t.date :start_date
    	t.date :end_date
    	t.references :cv, index: true
    	t.timestamp
    end
  end
end
