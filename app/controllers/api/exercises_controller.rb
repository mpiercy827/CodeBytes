class Api::ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def check
    @exercise = Exercise.find(params[:exercise_id])
    @feedback = {}

    fail
    @feedback["output"] = @exercise.correct_output(params[:output])
    @feedback["result"] = @exercise.correct_result(params[:result])

    # TODO: The return value is not being set properly. Fix this!

    render json: @feedback
  end
end
