class PackageDescriptionsController < ApplicationController
  before_action :set_package_description, only: [:show, :edit, :update, :destroy]

  # GET /package_descriptions
  # GET /package_descriptions.json
  def index
    @package_descriptions = PackageDescription.all

  end

  # GET /package_descriptions/1
  # GET /package_descriptions/1.json
  def show
     # respond_to do |format|
      # format.html
      # format.pdf do
        # pdf = Prawn::Document.new
        # send_data pdf.render, filename: 'report.pdf', type: 'application/pdf'
      # end
    # end

  end

  # GET /package_descriptions/new
  def new
    @package_description = PackageDescription.new
  end

  # GET /package_descriptions/1/edit
  def edit
  end
  def generate_pdf

   @package_description = PackageDescription.find params[:format]
   respond_to do |format|
     format.html
      format.pdf do
        pdf = ContentPdf.new(@package_description,view)
        send_data pdf.render, filename: 'report.pdf', type: 'application/pdf'
      end
    end
 end
  # POST /package_descriptions
  # POST /package_descriptions.json
  def create
     client_id = PackageTestReport.where(id: request.env["HTTP_REFERER"].split(".").last).last
     #client_id = PackageTestReport.find_by_client_name params[:client_name]
        #client_id = PackageTestReport.find_by_client_name params[:package_pack_type] if client_id.blank?
       @package_description = PackageDescription.new(:package_number => managed_params, :package_name=>params[:package_pack_type], :package_test_report_id=>client_id.id)

     respond_to do |format|
      if @package_description.save
        format.html { redirect_to @package_description, notice: 'Package description was successfully created.' }
        format.json { render :show, status: :created, location: @package_description }
      else
        format.html { render :new }
        format.json { render json: @package_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /package_descriptions/1
  # PATCH/PUT /package_descriptions/1.json
  def update
       respond_to do |format|
      if @package_description.update(:package_number => managed_params, :package_name=>params[:package_pack_type])
        format.html { redirect_to @package_description, notice: 'Package description was successfully updated.' }
        format.json { render :show, status: :ok, location: @package_description }
      else
        format.html { render :edit }
        format.json { render json: @package_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /package_descriptions/1
  # DELETE /package_descriptions/1.json
  def destroy
    @package_description.destroy
    respond_to do |format|
      format.html { redirect_to package_descriptions_url, notice: 'Package description was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package_description
      @package_description = PackageDescription.find(params[:id])
    end
    def managed_params
     p_array = []; t=0
    params.map {| x |
      t =t+1
       p_array.push(params["p#{t}"])
       }
       params["arranged_params"] = p_array
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def package_description_params
      params.require(:package_description).permit!
    end
end
