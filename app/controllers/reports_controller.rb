class ReportsController < ApplicationController
  def index
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      #send email
      ReportEmail.info_email(@report).deliver_now
    else
      render :new
    end
  end

  def show
    @report = Report.find(params[:id])
  end

  def unsubscribe
    @report = Report.where(email: params[:email]).first
    if @report
      ReportEmail.unsubscribe(@report).deliver_now
      clean_up(@report)
      redirect_to :reports_index_path
    else
      redirect_to :reports_index_path
    end
  end

  private

  def clean_up(report)
    report.generated_email = nil
    report.email_pool = nil
    report.save!
  end


  def report_params
    params.require(:report).permit(:email, :period)
  end
end
