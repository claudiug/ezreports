# == Schema Information
#
# Table name: reports
#
#  id              :integer          not null, primary key
#  email           :string
#  period          :integer
#  subscribed      :boolean
#  generated_email :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Report < ActiveRecord::Base

  after_save :assign_email

  def assign_email
    #get email from email pool
  end
end
