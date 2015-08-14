class Exercise < ActiveRecord::Base
  validates :readings, :instructions, :topic, presence: true
  belongs_to :topic
  has_one :solution

  def correct_output(user_output)
    solution.output == user_output
  end

  def correct_result(user_result)
    solution.result.to_json == user_result
  end
end
