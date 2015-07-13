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

FactoryGirl.define do
  factory :report do
    email "MyString"
period 1
  end

end
