class Api::TopicCompletionsController < ApplicationController
  def show
    @topic_completions = TopicCompletions.where(user: current_user)
  end
end
