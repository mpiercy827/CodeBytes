json.partial! "topic", topic: @topic
json.exercises do
  json.array! @topic.exercises do |exercise|
    json.partial! "api/exercises/exercise", exercise: exercise
  end
end
