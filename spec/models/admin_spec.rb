require 'rails_helper'

RSpec.describe Admin, type: :model do
  it "名前、フリガナ、メアド、パスワードがなければ無効であること" do
    admin = Admin.new(
          email: "test@test.com",
          password: "testtest"
      )
      expect(admin).to be_valid
  end
end