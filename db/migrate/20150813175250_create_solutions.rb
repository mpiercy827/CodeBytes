class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.text :result
      t.text :output
      t.integer :exercise_id, null: false
      t.timestamps null: false
    end

    add_index :solutions, :exercise_id, unique: true
  end
end
