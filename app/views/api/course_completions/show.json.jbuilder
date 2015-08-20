json.array! @course_completions do |cc|
  json.partial! "api/course_completions/coursecomp", course_completion: cc
end
