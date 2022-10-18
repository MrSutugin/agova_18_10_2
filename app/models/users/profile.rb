# == Schema Information
#
# Table name: profiles
#
#  id           :bigint           not null, primary key
#  bio          :text
#  confirmed    :boolean          default(FALSE)
#  dob          :date
#  first_name   :string           not null
#  last_name    :string           not null
#  profile_slug :string           not null
#  role         :integer          default(1), not null
#  score        :decimal(, )      default(0.0)
#  secret_key   :string           not null
#  slug         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  account_id   :bigint           not null
#
# Indexes
#
#  index_profiles_on_account_id  (account_id)
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#
class Profile < ApplicationRecord
  extend FriendlyId
  friendly_id :profile_slug, use: :slugged

  belongs_to :account
  has_many   :companies

  enum :profile_type, private_person: 1, brand: 2
  validates_presence_of :first_name, message: 'Имя должно присутствовать'
  validates_presence_of :last_name, message: 'Фамилия должна присутствовать'
end
