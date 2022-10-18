# == Schema Information
#
# Table name: countries
#
#  id         :bigint           not null, primary key
#  latitude   :string
#  longitude  :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Country < ApplicationRecord
  has_many :regions
end
