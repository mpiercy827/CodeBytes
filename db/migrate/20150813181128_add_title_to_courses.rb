class AddTitleToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :title, :string, null: false
  end
end
