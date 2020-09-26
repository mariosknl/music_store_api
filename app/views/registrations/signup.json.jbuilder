if @user.profile_type == 'Admin'
  json.email @user.email
  json.username @user.profile.username
end
