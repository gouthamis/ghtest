class PackagesController < ApplicationController
  before_action :set_package, only: [:show, :edit, :update, :destroy]

  # GET /Packages
  # GET /Packages.json
  def index
    @package = Package.all
  end

  # GET /Packages/1
  # GET /Packages/1.json
  def show
 respond_to do |format|
      format.html
       format.pdf 
      #do
        # pdf = ContentPdf.new(@package, view_context)
        # send_data pdf.render, filename: 'report.pdf', type: 'application/pdf',  disposition: 'inline'
      # end
    end
  end

  # GET /Packages/new
  def new
    @package = Package.new
    @package.fields.build
    @package.images.build
    @package_description = PackageDescription.find params[:id]
  end

  # GET /Packages/1/edit
  def edit
  end

  # POST /Packages
  # POST /Packages.json
  def create
    images =  package_params[:images_attributes]
    package_params.delete(:images_attributes)
    @package_descriptions = PackageDescription.find_by_package_name(package_params[:title])
    @package = Package.new(package_params)
    respond_to do |format|
      if @package.save
         @package.update_attributes(:package_description_id => @package_descriptions.id) 
        images["0"]["photo"].map { | im | @package.images.create!(:photo => im)} if not images.blank?
        format.html { redirect_to package_description_path(@package_descriptions), notice: 'Package was successfully created.' }
        format.json { render :show, status: :created, location: @package }
      else
        format.html { render :new }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Packages/1
  # PATCH/PUT /Packages/1.json
  def update
    respond_to do |format|
      if @package.update(package_params)
        format.html { redirect_to package_description_path(PackageDescription.where(@package.package_description_id).last), notice: 'Package was successfully updated.' }
        format.json { render :show, status: :ok, location: @package }
      else
        format.html { render :edit }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Packages/1
  # DELETE /Packages/1.json
  def destroy
    @package.destroy
    respond_to do |format|
      format.html { redirect_to packages_url, notice: 'Package was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package
      @package = Package.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def package_params
      params.require(:package).permit!
    end
end
