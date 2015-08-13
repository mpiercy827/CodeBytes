class Exercise < ActiveRecord::Base
  validates :readings, :instructions, :topic, presence: true
  belongs_to :topic
  has_one :solution
end
