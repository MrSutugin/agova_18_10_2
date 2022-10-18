# == Schema Information
#
# Table name: regions
#
#  id         :bigint           not null, primary key
#  latitude   :string
#  longitude  :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  country_id :bigint           not null
#
# Indexes
#
#  index_regions_on_country_id  (country_id)
#
# Foreign Keys
#
#  fk_rails_...  (country_id => countries.id)
#
class Region < ApplicationRecord
  belongs_to :country
  has_many   :municipalities
end
