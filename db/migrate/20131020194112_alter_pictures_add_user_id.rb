class AlterPicturesAddUserId < ActiveRecord::Migration
  def up
  	# I want to add the user_id column to the
  	# pics table
  	add_column :pics, :user_id, :integer
  	add_index :pics, :user_id
  end

  def down
  	remove_column :pics, :user_id
  end
end
