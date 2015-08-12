class Topic < ActiveRecord::Base
  validates :title, :description, :course, presence: true
  has_many :exercises
  belongs_to :course
end
