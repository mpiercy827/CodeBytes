class CreateTopicCompletions < ActiveRecord::Migration
  def change
    create_table :topic_completions do |t|
      t.integer :user_id, null: false
      t.integer :topic_id, null: false
      t.timestamps null: false
    end

    add_index :topic_completions, [:user_id, :topic_id], unique: true
  end
end
