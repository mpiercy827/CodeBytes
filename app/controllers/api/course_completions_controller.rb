class Api::CourseCompletionsController < ApplicationController
  def show
    @course_completions = CourseCompletion.where(user: current_user)
  end
end
