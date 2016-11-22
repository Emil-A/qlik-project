require 'test_helper'

class PalindromesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create palindrome post" do
    assert_difference('Palindrome.count') do
      post :create, :palindrome => { user: 'John Smith', body: 'dad'}
    end
      assert_redirected_to '/palindromes'
  end
end
