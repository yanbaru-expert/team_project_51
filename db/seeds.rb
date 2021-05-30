email = "test@example.com"
password = "password"
admin_email = "admin@example.com"

User.find_or_create_by!(email: email) do |user|
  user.password = password
  puts "ユーザーの初期データインポートに成功しました。"
end

AdminUser.find_or_create_by!(email: admin_email) do |adminuser|
  adminuser.password = password
  adminuser.password_confirmation = password
  puts "管理者ユーザーの初期データインポートに成功しました。"
end
