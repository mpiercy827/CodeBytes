class Solution < ActiveRecord::Base
  validates :exercise, presence: true, uniqueness: true
  belongs_to :exercise
end
