class AddTitleToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :title, :string, null: false
  end
end
