email = "test@example.com"
password = "password"
admin_email = "admin@example.com"

User.find_or_create_by!(email: email) do |user|
  user.password = password
  puts "ユーザーの初期データインポートに成功しました。"
end
AdminUser.find_or_create_by!(email: "admin@example.com", password: "password", password_confirmation: "password") if Rails.env.development?
