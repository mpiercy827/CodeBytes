json.extract! @user, :id, :email, :created_at
json.badges do
  json.array! @user.badges.each do |badge|
    json.extract! badge, :course_id
  end
end
