json.extract! @user, :id, :email

json.join_month @user.created_at.month
json.join_day @user.created_at.day
json.join_year @user.created_at.year

json.course_completions do
  json.array! @user.course_completions.each do |cc|
    json.partial! "api/course_completions/coursecomp", course_completion: cc
  end
end

json.topic_completions do
  json.array! @user.topic_completions.each do |tc|
    json.partial! "api/topic_completions/topiccomp", topic_completion: tc
  end
end

json.exercise_completions do
  json.array! @user.exercise_completions.each do |ec|
    json.partial! "api/exercise_completions/exercisecomp", exercise_completion: ec
  end
end
