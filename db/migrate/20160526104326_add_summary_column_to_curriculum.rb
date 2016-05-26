class AddSummaryColumnToCurriculum < ActiveRecord::Migration
  def change
  	add_column :curriculums, :summary, :string
  end
end
