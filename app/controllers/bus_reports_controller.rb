class BusReportsController < ApplicationController
  before_action :set_bus_report, only: [:show, :edit, :update, :destroy]

  # GET /bus_reports
  # GET /bus_reports.json
  def index
    @bus_reports = BusReport.all
  end

  # GET /bus_reports/1
  # GET /bus_reports/1.json
  def show
  end

  # GET /bus_reports/new
  def new
    @bus_report = BusReport.new
  end

  # GET /bus_reports/1/edit
  def edit
  end

  # POST /bus_reports
  # POST /bus_reports.json
  def create
    @bus_report = BusReport.new(bus_report_params)

    respond_to do |format|
      if @bus_report.save
        format.html { redirect_to @bus_report, notice: 'Bus report was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bus_report }
      else
        format.html { render action: 'new' }
        format.json { render json: @bus_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bus_reports/1
  # PATCH/PUT /bus_reports/1.json
  def update
    respond_to do |format|
      if @bus_report.update(bus_report_params)
        format.html { redirect_to @bus_report, notice: 'Bus report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bus_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bus_reports/1
  # DELETE /bus_reports/1.json
  def destroy
    @bus_report.destroy
    respond_to do |format|
      format.html { redirect_to bus_reports_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bus_report
      @bus_report = BusReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bus_report_params
      params.require(:bus_report).permit(:lat, :long, :bustime, :speed, :busid)
    end
end
