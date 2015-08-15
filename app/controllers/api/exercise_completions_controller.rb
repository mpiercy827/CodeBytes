class Api::ExerciseCompletionsController < ApplicationController
  def create
    if logged_in?
      @comp = ExerciseCompletion.create!(
        user_id: current_user.id,
        exercise_id: params[:exercise_id]
      )

      render json: @comp
    end
  end
end
