class AnalysesController < ApplicationController
  # GET /analyses
  # GET /analyses.json
  def index
    @analyses = Analysis.all.order(:name)
    @analyses_suggestions = Analysis.order(:name).where("name like ?", "%#{params[:term]}%")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @analyses_suggestions.map { |suggestion| {:value => suggestion.name.downcase, :label => suggestion.name, :id => suggestion.id.to_s }} }
    end
  end

  # GET /analyses/1
  # GET /analyses/1.json
  def show
    @analysis = Analysis.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @analysis }
    end
  end
  
  def search
    @analyses = Array.new
    params[:search_terms].keys.each do |key|
      #for now I will use conditional statements to deal with the cost and keyword searches
      if key == 'keyword'
        Keyword.where("name like ?", "%#{params[:analysis_search]}%").each do |result|
          @analyses << result.analysis
        end
      #elsif key == 'cost'
      #  Analysis.where("cost like ?", params[:analysis_search].match(/\d+.*\d*/)[0].to_f).each do |result|
      #    @analyses << result unless result.nil?
      #  end
      else
        Analysis.where("#{key} like ?", "%#{params[:analysis_search]}%").each do |result|
          @analyses << result
        end
      end
    end
    render layout: false
  end
end
