class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.text :readings, null: false
      t.text :instructions, null: false
      t.integer :topic_id, null: false
      t.timestamps null: false
    end

    add_index :exercises, :topic_id
  end
end
