class Topic < ActiveRecord::Base
  validates :title, :description, :course, presence: true
  has_many :exercises
  has_many :topic_completions
  belongs_to :course
end
