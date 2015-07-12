class ReportEmail < ApplicationMailer

  def info_email(report)
    @report = report
    mail(to: @report.email, subject: 'Welcome to My Awesome Site')
  end


  def unsubscribe(report)
    @report = report
    mail(to: @report.email, subject: 'Welcome to My Awesome Site')
  end
end
