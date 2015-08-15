class CreateExerciseCompletions < ActiveRecord::Migration
  def change
    create_table :exercise_completions do |t|
      t.integer :user_id, null: false
      t.integer :exercise_id, null: false
      t.timestamps null: false
    end

    add_index :exercise_completions, :user_id
  end
end
