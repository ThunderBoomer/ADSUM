require 'test_helper'

class AttendancesControllerTest < ActionController::TestCase
  setup do
    @attendance = attendances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendance" do
    assert_difference('Attendance.count') do
      post :create, attendance: { Date: @attendance.Date, absent: @attendance.absent, course_id: @attendance.course_id, excused: @attendance.excused, present: @attendance.present, student_id: @attendance.student_id, tardy: @attendance.tardy }
    end

    assert_redirected_to attendance_path(assigns(:attendance))
  end

  test "should show attendance" do
    get :show, id: @attendance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attendance
    assert_response :success
  end

  test "should update attendance" do
    put :update, id: @attendance, attendance: { Date: @attendance.Date, absent: @attendance.absent, course_id: @attendance.course_id, excused: @attendance.excused, present: @attendance.present, student_id: @attendance.student_id, tardy: @attendance.tardy }
    assert_redirected_to attendance_path(assigns(:attendance))
  end

  test "should destroy attendance" do
    assert_difference('Attendance.count', -1) do
      delete :destroy, id: @attendance
    end

    assert_redirected_to attendances_path
  end
end
