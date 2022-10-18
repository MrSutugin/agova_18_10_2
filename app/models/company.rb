# == Schema Information
#
# Table name: companies
#
#  id           :bigint           not null, primary key
#  active       :boolean          default(TRUE)
#  address      :string
#  bio          :text
#  company_slug :string           not null
#  confirmed    :boolean          default(FALSE)
#  inn          :string
#  name         :string
#  role         :integer          default(1), not null
#  score        :decimal(, )      default(0.0)
#  secret_key   :string           not null
#  slug         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  profile_id   :bigint           not null
#
# Indexes
#
#  index_companies_on_profile_id  (profile_id)
#
# Foreign Keys
#
#  fk_rails_...  (profile_id => profiles.id)
#
class Company < ApplicationRecord
  extend FriendlyId
  friendly_id :company_slug, use: :slugged
  
  belongs_to :profile
  has_many :members

  validates_presence_of :name, message: 'Название должно присутствовать'
  validates_presence_of :inn, message: 'ИНН должен присутствовать'
end
