class Exercise < ActiveRecord::Base
  validates :readings, :instructions, :topic, presence: true
  belongs_to :topic
  has_one :solution
  has_many :exercise_completions
  has_one :course, through: :topic

  def topic_siblings
    Exercise.where("topic_id = ?", self.topic_id)
  end

  def course_siblings
    self.course.exercises
  end

  def correct_output(user_output)
    solution.output == user_output || solution.output == user_output.to_s
  end

  def correct_result(user_result)
    solution.result == user_result
  end
end
