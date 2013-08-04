class AddUserIdToStatuses < ActiveRecord::Migration
  def change
  	add_reference :statuses, :user, index: true
  	#add_column :statuses, :user_id, :integer
  	#add_index :statuses, :user_id
  	remove_column :statuses, :name, :string
  end
end
