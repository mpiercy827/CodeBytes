class Api::ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def create
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def check
    @exercise = Exercise.find(params[:exercise_id])
    @feedback = {}

    @feedback["output"] = @exercise.correct_output(params[:output])
    @feedback["result"] = @exercise.correct_result(params[:result])

    if logged_in? && @feedback.values.all? { |v| v }
      current_user.add_completions(@exercise)
    end

    render json: @feedback
  end
end
