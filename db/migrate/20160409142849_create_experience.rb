class CreateExperience < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
    	t.string :job
    	t.string :company
    	t.date :start_date
    	t.date :end_date
    	t.text :description
    	t.references :cv, index: true
    	t.timestamp
    end
  end
end
