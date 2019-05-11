require 'test_helper'

class AlojamientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alojamiento = alojamientos(:one)
  end

  test "should get index" do
    get alojamientos_url
    assert_response :success
  end

  test "should get new" do
    get new_alojamiento_url
    assert_response :success
  end

  test "should create alojamiento" do
    assert_difference('Alojamiento.count') do
      post alojamientos_url, params: { alojamiento: { calificacion: @alojamiento.calificacion, cercano: @alojamiento.cercano, clasificacion: @alojamiento.clasificacion, descripcion: @alojamiento.descripcion, imagen: @alojamiento.imagen, reglas: @alojamiento.reglas, sitios_interes: @alojamiento.sitios_interes, tipo: @alojamiento.tipo } }
    end

    assert_redirected_to alojamiento_url(Alojamiento.last)
  end

  test "should show alojamiento" do
    get alojamiento_url(@alojamiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_alojamiento_url(@alojamiento)
    assert_response :success
  end

  test "should update alojamiento" do
    patch alojamiento_url(@alojamiento), params: { alojamiento: { calificacion: @alojamiento.calificacion, cercano: @alojamiento.cercano, clasificacion: @alojamiento.clasificacion, descripcion: @alojamiento.descripcion, imagen: @alojamiento.imagen, reglas: @alojamiento.reglas, sitios_interes: @alojamiento.sitios_interes, tipo: @alojamiento.tipo } }
    assert_redirected_to alojamiento_url(@alojamiento)
  end

  test "should destroy alojamiento" do
    assert_difference('Alojamiento.count', -1) do
      delete alojamiento_url(@alojamiento)
    end

    assert_redirected_to alojamientos_url
  end
end
