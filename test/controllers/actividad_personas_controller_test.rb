require 'test_helper'

class ActividadPersonasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actividad_persona = actividad_personas(:one)
  end

  test "should get index" do
    get actividad_personas_url, as: :json
    assert_response :success
  end

  test "should create actividad_persona" do
    assert_difference('ActividadPersona.count') do
      post actividad_personas_url, params: { actividad_persona: { actividad_id: @actividad_persona.actividad_id, persona_id: @actividad_persona.persona_id } }, as: :json
    end

    assert_response 201
  end

  test "should show actividad_persona" do
    get actividad_persona_url(@actividad_persona), as: :json
    assert_response :success
  end

  test "should update actividad_persona" do
    patch actividad_persona_url(@actividad_persona), params: { actividad_persona: { actividad_id: @actividad_persona.actividad_id, persona_id: @actividad_persona.persona_id } }, as: :json
    assert_response 200
  end

  test "should destroy actividad_persona" do
    assert_difference('ActividadPersona.count', -1) do
      delete actividad_persona_url(@actividad_persona), as: :json
    end

    assert_response 204
  end
end
