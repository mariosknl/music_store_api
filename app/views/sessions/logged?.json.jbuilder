if @user.profile_type == 'Admin'
  json.email @user.email
  json.username @user.profile.username
  json.profile_type @user.profile_type
end

if @user.profile_type == 'Guest'
  json.email @user.email
  json.username @user.profile.username
  json.profile_type @user.profile_type
  json.likes @user.likes
end
