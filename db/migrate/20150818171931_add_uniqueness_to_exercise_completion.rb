class AddUniquenessToExerciseCompletion < ActiveRecord::Migration
  def change
    add_index :exercise_completions, [:user_id, :exercise_id], unique: true
  end
end
