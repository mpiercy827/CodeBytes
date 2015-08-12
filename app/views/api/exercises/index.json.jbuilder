json.array! @exercises do |exercise|
  json.partial! "exercise", exercise: exercise
end
