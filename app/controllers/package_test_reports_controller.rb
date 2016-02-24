class PackageTestReportsController < ApplicationController
  before_action :set_package_test_report, only: [:show, :edit, :update, :destroy]

  # GET /package_test_reports
  # GET /package_test_reports.json
  def index
    @package_test_reports = PackageTestReport.all
  end

  # GET /package_test_reports/1
  # GET /package_test_reports/1.json
  def show
  end

  # GET /package_test_reports/new
  def new
    @package_test_report = PackageTestReport.new
  end

  # GET /package_test_reports/1/edit
  def edit
  end

  # POST /package_test_reports
  # POST /package_test_reports.json
  def create
    @package_test_report = PackageTestReport.new(package_test_report_params)

    respond_to do |format|
      if @package_test_report.save
        format.html { redirect_to package_test_report_path(@package_test_report), notice: 'successfully created.' }
        # format.html { redirect_to new_package_description_path params[:pt_test] = @package_test_report.id, notice: 'Package test report was successfully created.' }
        format.json { render :show, status: :created, location: @package_test_report }
      else
        format.html { render :new }
        format.json { render json: @package_test_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /package_test_reports/1
  # PATCH/PUT /package_test_reports/1.json
  def update
    respond_to do |format|
      if @package_test_report.update(package_test_report_params)
        format.html { redirect_to @package_test_report, notice: 'Package test report was successfully updated.' }
        format.json { render :show, status: :ok, location: @package_test_report }
      else
        format.html { render :edit }
        format.json { render json: @package_test_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /package_test_reports/1
  # DELETE /package_test_reports/1.json
  def destroy
    @package_test_report.destroy
    respond_to do |format|
      format.html { redirect_to package_test_reports_url, notice: 'Package test report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package_test_report
      @package_test_report = PackageTestReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def package_test_report_params
      params.require(:package_test_report).permit! #(:customer_details, :testing_performed_by, :test_date, :package_details, :manufacture_details, :authorized_signature, :release_date, :packaging_group1, :packaging_group2, :personal_present_during_test)
    end
end
