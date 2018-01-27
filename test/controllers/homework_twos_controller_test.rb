require 'test_helper'

class HomeworkTwosControllerTest < ActionController::TestCase
  setup do
    @homework_two = homework_twos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homework_twos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homework_two" do
    assert_difference('HomeworkTwo.count') do
      post :create, homework_two: { email: @homework_two.email, name: @homework_two.name }
    end

    assert_redirected_to homework_two_path(assigns(:homework_two))
  end

  test "should show homework_two" do
    get :show, id: @homework_two
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homework_two
    assert_response :success
  end

  test "should update homework_two" do
    patch :update, id: @homework_two, homework_two: { email: @homework_two.email, name: @homework_two.name }
    assert_redirected_to homework_two_path(assigns(:homework_two))
  end

  test "should destroy homework_two" do
    assert_difference('HomeworkTwo.count', -1) do
      delete :destroy, id: @homework_two
    end

    assert_redirected_to homework_twos_path
  end
end
