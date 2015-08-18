class AddImagesToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :image_location, :string
  end
end
