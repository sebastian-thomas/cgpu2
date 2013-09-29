class StudentsController < ApplicationController
  load_and_authorize_resource  except: [:create]
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    if current_user.role? :student
      u = Student.where(:email => current_user.email)
      if u.exists?
        @students = u
      else
        redirect_to new_student_path
      end
    else  # redirect current user to his page
      @students = Student.all
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    u = Student.where(:email => current_user.email)
    if u.exists?
      @student = u.first
      redirect_to @student
    else
      @student = Student.new
    end
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    #@student = Student.new(student_params)
    @student = current_user.students.create(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render action: 'show', status: :created, location: @student }
      else
        format.html { render action: 'new' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      s = Student.find(params[:id])
      u = Student.where(:email => current_user.email)
      m = u.first
      if current_user.role? :student
        if u == s 
          @student = m
        else
          @student = m
        end
      else
        @student = s
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student)["user_id"] = current_user
      params.require(:student).permit(:user_id, :name, :course, :dept, :batch, :gender, :dob, :fname, :mname, :fjob, :mjob, :paddr, :taddr, :height, :weight, :eye, :mobile, :resiph, :emerph, :email, :regreceipt, :erank, :ssc_board, :ssc_yop, :ssc_aggr, :hsc_board, :hsc_yop, :hsc_aggr, :d_trade, :d_yop, :d_board, :d_aggr, :ug12, :ug3, :ug4, :ug5, :ug6, :ug7, :ug8, :ug9, :ug10, :ug_cgpa, :ug_hist12, :ug_hist3, :ug_hist4, :ug_hist5, :ug_hist6, :ug_hist7, :ug_hist8, :ug_hist_total, :ug_backlog12, :ug_backlog3, :ug_backlog4, :ug_backlog5, :ug_backlog6, :ug_backlog7, :ug_backlog8, :ug_b_pending, :pg1, :pg2, :pg3, :pg4, :pg_cgpu, :pg_hist1, :pg_hist2, :pg_hist3, :pg_hist4, :pg_hist_total, :pg_backlog1, :pg_backlog2, :pg_backlog3, :pg_backlog4, :pg_backlog_pending, :gap, :verify_status)
    end
end
