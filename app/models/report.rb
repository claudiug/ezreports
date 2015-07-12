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

  validates :email, presence: true
  validates :period, numericality: {only_integer: true}
  has_one :email_pool

  after_save :assign_email

  def assign_email
    self.generated_emai l= EmailPool.where(report_id: nil).sample.email
  end
end
