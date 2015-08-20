class AddBadgeImageToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :badge_image_location, :string, null: false
  end
end
