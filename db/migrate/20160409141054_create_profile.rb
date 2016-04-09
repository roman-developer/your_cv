class CreateProfile < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.string :name
    	t.string :last_name
    	t.integer :age
    	t.integer :phone
    	t.string :url_1
    	t.string :url_2
    	t.string :url_3
    	t.references :user, index: true
    	t.timestamps
    end
  end
end
