class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :language, null: false
      t.string :description, null: false
      t.timestamps null: false
    end

    add_index :courses, :language
  end
end
