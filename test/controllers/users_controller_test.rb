require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do 
    @user = User.new(username: "Hugh Janus", 
                      email: "HuJanus@example.com", 
                      password: "password")
  end

  test "should create user" do
    assert_difference('User.count', 1) do
      @user.save
    end
  end

end