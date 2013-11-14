class RemoveUserIdFromKids < ActiveRecord::Migration
  def change
    remove_column :kids, :user_id, :integer
  end
end
