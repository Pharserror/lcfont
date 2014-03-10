class ConsultantsController < ApplicationController
  # GET /consultants
  # GET /consultants.json
  def index
    @consultants = Consultant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @consultants }
    end
  end

  # GET /consultants/1
  # GET /consultants/1.json
  def show
    @consultant = Consultant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @consultant }
    end
  end
end
