require 'test_helper'

class IdeasPresentadasControllerTest < ActionController::TestCase
  setup do
    @idea_presentada = ideas_presentadas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ideas_presentadas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idea_presentada" do
    assert_difference('IdeaPresentada.count') do
      post :create, idea_presentada: { descripcion: @idea_presentada.descripcion, emprendedor: @idea_presentada.emprendedor, nombre: @idea_presentada.nombre, slug: @idea_presentada.slug }
    end

    assert_redirected_to idea_presentada_path(assigns(:idea_presentada))
  end

  test "should show idea_presentada" do
    get :show, id: @idea_presentada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idea_presentada
    assert_response :success
  end

  test "should update idea_presentada" do
    patch :update, id: @idea_presentada, idea_presentada: { descripcion: @idea_presentada.descripcion, emprendedor: @idea_presentada.emprendedor, nombre: @idea_presentada.nombre, slug: @idea_presentada.slug }
    assert_redirected_to idea_presentada_path(assigns(:idea_presentada))
  end

  test "should destroy idea_presentada" do
    assert_difference('IdeaPresentada.count', -1) do
      delete :destroy, id: @idea_presentada
    end

    assert_redirected_to ideas_presentadas_path
  end
end
