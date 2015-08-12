json.partial! 'course', course: @course
json.topics do
  json.array! @course.topics do |topic|
    json.partial! "api/topics/topic", topic: topic
  end
end
