require 'rails_helper'

RSpec.describe User, type: :model do
# 姓、名、メール、パスワードがあれば有効な状態であること
it "is valid with a first name, last name, email, and password" do
  user = User.new(
    first_name: "Aaron",
    last_name: "Summer",
    email: "tester@example.com",
    password: "password",
  )
  expect(user).to be_valid
end
# 名がなければ無効な状態であること
it "is invalid without a first name" do
# 姓がなければ無効な状態であること
  user = User.new(first_name: nil)
    user.valid?
    expect(user.errors[:first_name]).to include("can't be blank")
end
it "is invalid without a last name"
# メールアドレスがなければ無効な状態であること
it "is invalid without an email address"
# 重複したメールアドレスなら無効な状態であること
it "is invalid with a duplicate email address"
# ユーザーのフルネームを文字列として返すこと
it "returns a user's full name as a string"
end
