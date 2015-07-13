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

require 'rails_helper'

RSpec.describe Report, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
