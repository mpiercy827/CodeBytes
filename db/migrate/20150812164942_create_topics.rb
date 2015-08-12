class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :course_id, null: false
      t.timestamps null: false
    end

    add_index :topics, :course_id
  end
end
