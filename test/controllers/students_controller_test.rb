require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { batch: @student.batch, course: @student.course, d_aggr: @student.d_aggr, d_board: @student.d_board, d_trade: @student.d_trade, d_yop: @student.d_yop, dept: @student.dept, dob: @student.dob, email: @student.email, emerph: @student.emerph, erank: @student.erank, eye: @student.eye, fjob: @student.fjob, fname: @student.fname, gap: @student.gap, gender: @student.gender, height: @student.height, hsc_aggr: @student.hsc_aggr, hsc_board: @student.hsc_board, hsc_yop: @student.hsc_yop, mjob: @student.mjob, mname: @student.mname, mobile: @student.mobile, name: @student.name, paddr: @student.paddr, pg1: @student.pg1, pg2: @student.pg2, pg3: @student.pg3, pg4: @student.pg4, pg_backlog1: @student.pg_backlog1, pg_backlog2: @student.pg_backlog2, pg_backlog3: @student.pg_backlog3, pg_backlog4: @student.pg_backlog4, pg_backlog_pending: @student.pg_backlog_pending, pg_cgpu: @student.pg_cgpu, pg_hist1: @student.pg_hist1, pg_hist2: @student.pg_hist2, pg_hist3: @student.pg_hist3, pg_hist4: @student.pg_hist4, pg_hist_total: @student.pg_hist_total, regreceipt: @student.regreceipt, resiph: @student.resiph, ssc_aggr: @student.ssc_aggr, ssc_board: @student.ssc_board, ssc_yop: @student.ssc_yop, taddr: @student.taddr, ug10: @student.ug10, ug12: @student.ug12, ug3: @student.ug3, ug4: @student.ug4, ug5: @student.ug5, ug6: @student.ug6, ug7: @student.ug7, ug8: @student.ug8, ug9: @student.ug9, ug_b_pending: @student.ug_b_pending, ug_backlog12: @student.ug_backlog12, ug_backlog3: @student.ug_backlog3, ug_backlog4: @student.ug_backlog4, ug_backlog5: @student.ug_backlog5, ug_backlog6: @student.ug_backlog6, ug_backlog7: @student.ug_backlog7, ug_backlog8: @student.ug_backlog8, ug_cgpa: @student.ug_cgpa, ug_hist12: @student.ug_hist12, ug_hist3: @student.ug_hist3, ug_hist4: @student.ug_hist4, ug_hist5: @student.ug_hist5, ug_hist6: @student.ug_hist6, ug_hist7: @student.ug_hist7, ug_hist8: @student.ug_hist8, ug_hist_total: @student.ug_hist_total, user_id: @student.user_id, verify_status: @student.verify_status, weight: @student.weight }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { batch: @student.batch, course: @student.course, d_aggr: @student.d_aggr, d_board: @student.d_board, d_trade: @student.d_trade, d_yop: @student.d_yop, dept: @student.dept, dob: @student.dob, email: @student.email, emerph: @student.emerph, erank: @student.erank, eye: @student.eye, fjob: @student.fjob, fname: @student.fname, gap: @student.gap, gender: @student.gender, height: @student.height, hsc_aggr: @student.hsc_aggr, hsc_board: @student.hsc_board, hsc_yop: @student.hsc_yop, mjob: @student.mjob, mname: @student.mname, mobile: @student.mobile, name: @student.name, paddr: @student.paddr, pg1: @student.pg1, pg2: @student.pg2, pg3: @student.pg3, pg4: @student.pg4, pg_backlog1: @student.pg_backlog1, pg_backlog2: @student.pg_backlog2, pg_backlog3: @student.pg_backlog3, pg_backlog4: @student.pg_backlog4, pg_backlog_pending: @student.pg_backlog_pending, pg_cgpu: @student.pg_cgpu, pg_hist1: @student.pg_hist1, pg_hist2: @student.pg_hist2, pg_hist3: @student.pg_hist3, pg_hist4: @student.pg_hist4, pg_hist_total: @student.pg_hist_total, regreceipt: @student.regreceipt, resiph: @student.resiph, ssc_aggr: @student.ssc_aggr, ssc_board: @student.ssc_board, ssc_yop: @student.ssc_yop, taddr: @student.taddr, ug10: @student.ug10, ug12: @student.ug12, ug3: @student.ug3, ug4: @student.ug4, ug5: @student.ug5, ug6: @student.ug6, ug7: @student.ug7, ug8: @student.ug8, ug9: @student.ug9, ug_b_pending: @student.ug_b_pending, ug_backlog12: @student.ug_backlog12, ug_backlog3: @student.ug_backlog3, ug_backlog4: @student.ug_backlog4, ug_backlog5: @student.ug_backlog5, ug_backlog6: @student.ug_backlog6, ug_backlog7: @student.ug_backlog7, ug_backlog8: @student.ug_backlog8, ug_cgpa: @student.ug_cgpa, ug_hist12: @student.ug_hist12, ug_hist3: @student.ug_hist3, ug_hist4: @student.ug_hist4, ug_hist5: @student.ug_hist5, ug_hist6: @student.ug_hist6, ug_hist7: @student.ug_hist7, ug_hist8: @student.ug_hist8, ug_hist_total: @student.ug_hist_total, user_id: @student.user_id, verify_status: @student.verify_status, weight: @student.weight }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
