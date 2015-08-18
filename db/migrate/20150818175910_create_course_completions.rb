class CreateCourseCompletions < ActiveRecord::Migration
  def change
    create_table :course_completions do |t|
      t.integer :user_id, null: false
      t.integer :course_id, null: false
      t.timestamps null: false
    end

    add_index :course_completions, [:user_id, :course_id], unique: true
  end
end
