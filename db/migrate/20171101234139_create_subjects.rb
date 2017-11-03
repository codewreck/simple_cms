class CreateSubjects < ActiveRecord::Migration[5.1]
  def up
    create_table :subjects do |t|
    	t.column "name", :string
    	t.column "position", :string
    	t.boolean "visible", :default => false
      t.timestamps
    end
  end

  def down
  	drop_table :subjects
	end
end
