class Topic < ActiveRecord::Base
  validates :title, :description, :course, presence: true
  has_many :exercises, dependent: :destroy
  has_many :topic_completions, dependent: :destroy
  belongs_to :course
end
