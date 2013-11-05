class CreateKidsUsersTable < ActiveRecord::Migration
  def change
    create_table :kids_users, :id => false do |t|
      t.integer :kid_id
      t.integer :user_id
    end
  end
end
