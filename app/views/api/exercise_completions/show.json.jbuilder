json.array! @exercise_completions do |ec|
  json.partial! "api/exercise_completions/exercisecomp", exercise_completion: ec
end
