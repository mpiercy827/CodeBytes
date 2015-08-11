class Course < ActiveRecord::Base
  validates :language, :description, presence: true;
end
