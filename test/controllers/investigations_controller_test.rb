require 'test_helper'

class InvestigationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investigation = investigations(:one)
  end

  test "should get index" do
    get investigations_url
    assert_response :success
  end

  test "should get new" do
    get new_investigation_url
    assert_response :success
  end

  test "should create investigation" do
    assert_difference('Investigation.count') do
      post investigations_url, params: { investigation: { descripcion: @investigation.descripcion, fecha_entrega: @investigation.fecha_entrega, nombre: @investigation.nombre, user_id: @investigation.user_id } }
    end

    assert_redirected_to investigation_url(Investigation.last)
  end

  test "should show investigation" do
    get investigation_url(@investigation)
    assert_response :success
  end

  test "should get edit" do
    get edit_investigation_url(@investigation)
    assert_response :success
  end

  test "should update investigation" do
    patch investigation_url(@investigation), params: { investigation: { descripcion: @investigation.descripcion, fecha_entrega: @investigation.fecha_entrega, nombre: @investigation.nombre, user_id: @investigation.user_id } }
    assert_redirected_to investigation_url(@investigation)
  end

  test "should destroy investigation" do
    assert_difference('Investigation.count', -1) do
      delete investigation_url(@investigation)
    end

    assert_redirected_to investigations_url
  end
end
