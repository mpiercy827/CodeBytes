json.array! @topic_completions do |tc|
  json.partial! "api/topic_completions/topiccomp", topic_completion: tc
end
