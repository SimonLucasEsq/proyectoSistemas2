require 'test_helper'

class AttachedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attached = attacheds(:one)
  end

  test "should get index" do
    get attacheds_url
    assert_response :success
  end

  test "should get new" do
    get new_attached_url
    assert_response :success
  end

  test "should create attached" do
    assert_difference('Attached.count') do
      post attacheds_url, params: { attached: { descripcion: @attached.descripcion, fecha_subida: @attached.fecha_subida, investigation_id: @attached.investigation_id } }
    end

    assert_redirected_to attached_url(Attached.last)
  end

  test "should show attached" do
    get attached_url(@attached)
    assert_response :success
  end

  test "should get edit" do
    get edit_attached_url(@attached)
    assert_response :success
  end

  test "should update attached" do
    patch attached_url(@attached), params: { attached: { descripcion: @attached.descripcion, fecha_subida: @attached.fecha_subida, investigation_id: @attached.investigation_id } }
    assert_redirected_to attached_url(@attached)
  end

  test "should destroy attached" do
    assert_difference('Attached.count', -1) do
      delete attached_url(@attached)
    end

    assert_redirected_to attacheds_url
  end
end
