class CreateCv < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
    	t.string :professional_profile
    	t.string :mother_tongue
    	t.string :language_1
    	t.string :language_2
    	t.text :other
    	t.timestamps
    end
  end
end
