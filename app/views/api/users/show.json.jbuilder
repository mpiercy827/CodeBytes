json.extract! @user, :id, :email

json.join_month @user.created_at.month
json.join_day @user.created_at.day
json.join_year @user.created_at.year

json.course_completions do
  json.array! @user.course_completions.each do |cc|
    json.partial! "api/course_completions/coursecomp", course_completion: cc
  end
end
