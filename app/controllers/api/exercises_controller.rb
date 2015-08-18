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

    @feedback["output"] = @exercise.correct_output(params[:output])
    @feedback["result"] = @exercise.correct_result(params[:result])

    if logged_in? && @feedback.values.all? { |val| val }
      ex_comp = ExerciseCompletion.new(user: current_user, exercise: @exercise)
      ex_comp.save #will fail silently if one already exists
    end

    render json: @feedback
  end
end
