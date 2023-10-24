require "test_helper"

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get index" do
    get transactions_index_url
    assert_response :success
  end

  test "should get new" do
    get transactions_new_url
    assert_response :success
  end
end
