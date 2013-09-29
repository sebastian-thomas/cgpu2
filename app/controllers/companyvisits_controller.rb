class CompanyvisitsController < ApplicationController
  before_action :set_companyvisit, only: [:show, :edit, :update, :destroy]

  # GET /companyvisits
  # GET /companyvisits.json
  def index
    @companyvisits = Companyvisit.all
  end

  # GET /companyvisits/1
  # GET /companyvisits/1.json
  def show
  end

  # GET /companyvisits/new
  def new
    @companyvisit = Companyvisit.new
  end

  # GET /companyvisits/1/edit
  def edit
  end

  # POST /companyvisits
  # POST /companyvisits.json
  def create
    @companyvisit = Companyvisit.new(companyvisit_params)

    respond_to do |format|
      if @companyvisit.save
        format.html { redirect_to @companyvisit, notice: 'Companyvisit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @companyvisit }
      else
        format.html { render action: 'new' }
        format.json { render json: @companyvisit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companyvisits/1
  # PATCH/PUT /companyvisits/1.json
  def update
    respond_to do |format|
      if @companyvisit.update(companyvisit_params)
        format.html { redirect_to @companyvisit, notice: 'Companyvisit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @companyvisit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companyvisits/1
  # DELETE /companyvisits/1.json
  def destroy
    @companyvisit.destroy
    respond_to do |format|
      format.html { redirect_to companyvisits_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companyvisit
      @companyvisit = Companyvisit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def companyvisit_params
      params.require(:companyvisit).permit(:company_id, :on, :description)
    end
end
