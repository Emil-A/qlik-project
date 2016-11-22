require 'test_helper'

class PalindromesControllerTest < ActionController::TestCase
  def setup
    @post_one = palindromes(:post_one)
  end

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

  test "should destroy palindrome post" do
    assert_difference('Palindrome.count', -1) do
      delete :destroy, id: @post_one
    end
      assert_redirected_to '/palindromes'
  end
end
