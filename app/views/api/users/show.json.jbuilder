json.extract! @user, :id, :email

json.join_month @user.created_at.month
json.join_day @user.created_at.day
json.join_year @user.created_at.year

json.badges do
  json.array! @user.badges.each do |badge|
    json.extract! badge, :course_id
  end
end
