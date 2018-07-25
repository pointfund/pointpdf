require 'test_helper'

class PdfPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pdf_pages_index_url
    assert_response :success
  end

  test "should get show" do
    get pdf_pages_show_url
    assert_response :success
  end

  test "should get create" do
    get pdf_pages_create_url
    assert_response :success
  end

end
