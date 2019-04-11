require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  test "unsuccessfull edit" do
    get edit_user_path(@user)
    assert_template 'users/edit'
    path user_path(@user), params {user: {name: "",
                                  email: "foo@invalid",
                                  password:   "foo",
                                  password_confirmation: "bar"}}
  end
end
