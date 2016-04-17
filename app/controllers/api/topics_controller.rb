class Api::TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def create
  end

  def show
    @topic = Topic.find(params[:id])
  end

  private
  def topic_params
    params.require(:topic).permit(:title, :description, :course_id)
  end
end
