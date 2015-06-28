require 'test_helper'

class StartupWeekendsControllerTest < ActionController::TestCase
  setup do
    @startup_weekend = startup_weekends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:startup_weekends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create startup_weekend" do
    assert_difference('StartupWeekend.count') do
      post :create, startup_weekend: { descripcion: @startup_weekend.descripcion, logo: @startup_weekend.logo, slug: @startup_weekend.slug, titulo: @startup_weekend.titulo }
    end

    assert_redirected_to startup_weekend_path(assigns(:startup_weekend))
  end

  test "should show startup_weekend" do
    get :show, id: @startup_weekend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @startup_weekend
    assert_response :success
  end

  test "should update startup_weekend" do
    patch :update, id: @startup_weekend, startup_weekend: { descripcion: @startup_weekend.descripcion, logo: @startup_weekend.logo, slug: @startup_weekend.slug, titulo: @startup_weekend.titulo }
    assert_redirected_to startup_weekend_path(assigns(:startup_weekend))
  end

  test "should destroy startup_weekend" do
    assert_difference('StartupWeekend.count', -1) do
      delete :destroy, id: @startup_weekend
    end

    assert_redirected_to startup_weekends_path
  end
end
