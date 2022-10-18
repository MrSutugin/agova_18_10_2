# == Schema Information
#
# Table name: municipalities
#
#  id         :bigint           not null, primary key
#  latitude   :string
#  longitude  :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  region_id  :bigint           not null
#
# Indexes
#
#  index_municipalities_on_region_id  (region_id)
#
# Foreign Keys
#
#  fk_rails_...  (region_id => regions.id)
#
class Municipality < ApplicationRecord
  belongs_to :region
  has_many   :settlements
end
