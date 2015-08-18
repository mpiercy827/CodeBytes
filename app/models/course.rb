class Course < ActiveRecord::Base
  validates :language, :description, presence: true
  has_many :topics, dependent: :destroy
  has_many :course_completions, dependent: :destroy
  has_many :exercises, through: :topics, dependent: :destroy
end
