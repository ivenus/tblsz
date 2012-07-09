require 'test_helper'

class TabletsControllerTest < ActionController::TestCase
  setup do
    @tablet = tablets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tablets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tablet" do
    assert_difference('Tablet.count') do
      post :create, tablet: { bezelheight: @tablet.bezelheight, bezelwidth: @tablet.bezelwidth, height: @tablet.height, name2: @tablet.name2, name3: @tablet.name3, name: @tablet.name, ppi: @tablet.ppi, reshor: @tablet.reshor, resver: @tablet.resver, thickmax: @tablet.thickmax, thickmin: @tablet.thickmin, width: @tablet.width }
    end

    assert_redirected_to tablet_path(assigns(:tablet))
  end

  test "should show tablet" do
    get :show, id: @tablet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tablet
    assert_response :success
  end

  test "should update tablet" do
    put :update, id: @tablet, tablet: { bezelheight: @tablet.bezelheight, bezelwidth: @tablet.bezelwidth, height: @tablet.height, name2: @tablet.name2, name3: @tablet.name3, name: @tablet.name, ppi: @tablet.ppi, reshor: @tablet.reshor, resver: @tablet.resver, thickmax: @tablet.thickmax, thickmin: @tablet.thickmin, width: @tablet.width }
    assert_redirected_to tablet_path(assigns(:tablet))
  end

  test "should destroy tablet" do
    assert_difference('Tablet.count', -1) do
      delete :destroy, id: @tablet
    end

    assert_redirected_to tablets_path
  end
end
