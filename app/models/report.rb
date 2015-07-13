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
#  subscribe_hash  :string
#

class Report < ActiveRecord::Base

  validates :email, presence: true
  validates :period, numericality: {only_integer: true}
  has_one :email_pool

  after_save :assign_email

  def assign_email
    self.generated_email = EmailPool.where(report_id: nil).sample.email
  end

  def generate_hash_for_unsubscribe
    update_column(:subscribe_hash, SecureRandom.base64)
  end
end
