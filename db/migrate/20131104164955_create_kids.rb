class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :fname
      t.string :lname
      t.string :mname
      t.date :dateofbirth
      t.string :school
      t.integer :user_id

      t.timestamps
    end
    add_index :kids, [:user_id]
  end
end
