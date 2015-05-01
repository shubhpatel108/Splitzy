class CreateWords < ActiveRecord::Migration
  def up
	create_table :words do |t|
		t.string :normal
		t.string :syllabified
		t.timestamps
	end
  end

  def down
  	drop_table :words
  end
end
