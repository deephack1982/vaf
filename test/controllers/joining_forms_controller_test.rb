require 'test_helper'

class JoiningFormsControllerTest < ActionController::TestCase
  setup do
    @joining_form = joining_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:joining_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create joining_form" do
    assert_difference('JoiningForm.count') do
      post :create, joining_form: { age: @joining_form.age, available: @joining_form.available, english_proficiency: @joining_form.english_proficiency, interests: @joining_form.interests, notes: @joining_form.notes, software: @joining_form.software, years_experience: @joining_form.years_experience }
    end

    assert_redirected_to joining_form_path(assigns(:joining_form))
  end

  test "should show joining_form" do
    get :show, id: @joining_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @joining_form
    assert_response :success
  end

  test "should update joining_form" do
    patch :update, id: @joining_form, joining_form: { age: @joining_form.age, available: @joining_form.available, english_proficiency: @joining_form.english_proficiency, interests: @joining_form.interests, notes: @joining_form.notes, software: @joining_form.software, years_experience: @joining_form.years_experience }
    assert_redirected_to joining_form_path(assigns(:joining_form))
  end

  test "should destroy joining_form" do
    assert_difference('JoiningForm.count', -1) do
      delete :destroy, id: @joining_form
    end

    assert_redirected_to joining_forms_path
  end
end
