class Topic < ActiveRecord::Base
  validates :title, :description, :course, presence: true
  belongs_to :course
end
