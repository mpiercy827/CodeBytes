class Api::TopicCompletionsController < ApplicationController
  def show
    @topic_completions = TopicCompletion.where(user: current_user)
  end
end
