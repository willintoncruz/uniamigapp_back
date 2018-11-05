require 'test_helper'

class ActividadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actividad = actividads(:one)
  end

  test "should get index" do
    get actividads_url, as: :json
    assert_response :success
  end

  test "should create actividad" do
    assert_difference('Actividad.count') do
      post actividads_url, params: { actividad: { descripcion: @actividad.descripcion, nombre: @actividad.nombre, persona_id: @actividad.persona_id } }, as: :json
    end

    assert_response 201
  end

  test "should show actividad" do
    get actividad_url(@actividad), as: :json
    assert_response :success
  end

  test "should update actividad" do
    patch actividad_url(@actividad), params: { actividad: { descripcion: @actividad.descripcion, nombre: @actividad.nombre, persona_id: @actividad.persona_id } }, as: :json
    assert_response 200
  end

  test "should destroy actividad" do
    assert_difference('Actividad.count', -1) do
      delete actividad_url(@actividad), as: :json
    end

    assert_response 204
  end
end
