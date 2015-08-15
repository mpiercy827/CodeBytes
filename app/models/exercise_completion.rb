class ExerciseCompletion < ActiveRecord::Base
  validates :user, :exercise, presence: true
  belongs_to :user
  belongs_to :exercise
end
