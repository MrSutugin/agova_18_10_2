# == Schema Information
#
# Table name: categories
#
#  id          :bigint           not null, primary key
#  ancestry    :string
#  description :text
#  name        :string
#  slug        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_categories_on_ancestry  (ancestry)
#
class Category < ApplicationRecord
end
