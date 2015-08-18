class Course < ActiveRecord::Base
  validates :language, :description, presence: true
  has_many :topics
  has_many :course_completions
  has_many :exercises, through: :topics
end
