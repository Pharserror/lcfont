class PackagesController < ApplicationController
  # GET /packages
  # GET /packages.json
  def index
    @packages = Package.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @packages }
    end
  end

  # GET /packages/1
  # GET /packages/1.json
  def show
    @package = Package.find_by_slug(params[:id])
    #if request.path != packages_path(@package)
    #  redirect_to @package, status: :moved_permanently
    #end
    analysispackages =  Analysispackage.find_all_by_package_id(@package.id)
    analysis_ids = Array.new;
    analysispackages.each do |analysispackage|
      analysis_ids << analysispackage.analysis_id    
    end
    @analyses = Analysis.find_all_by_id(analysis_ids)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @analyses }
    end
  end
end
