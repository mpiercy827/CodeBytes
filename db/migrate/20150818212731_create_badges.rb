class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.integer :user_id, null: false
      t.integer :course_id, null: false
      t.string :description
      t.timestamps null: false
    end

    add_index :badges, [:user_id, :course_id], unique: true
  end
end
