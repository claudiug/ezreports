# == Schema Information
#
# Table name: email_pools
#
#  id         :integer          not null, primary key
#  email      :string
#  report_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EmailPool < ActiveRecord::Base

  validates :email, presence: true
  belongs_to :report
end
