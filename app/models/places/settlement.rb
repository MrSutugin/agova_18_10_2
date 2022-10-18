# == Schema Information
#
# Table name: settlements
#
#  id              :bigint           not null, primary key
#  address         :string
#  addressshort    :string
#  children        :decimal(, )
#  latitude        :string
#  longitude       :string
#  name            :string
#  oktmo           :decimal(, )
#  population      :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  municipality_id :bigint           not null
#
# Indexes
#
#  index_settlements_on_municipality_id  (municipality_id)
#
# Foreign Keys
#
#  fk_rails_...  (municipality_id => municipalities.id)
#
class Settlement < ApplicationRecord
  belongs_to :municipality

  has_many :profiles
end
