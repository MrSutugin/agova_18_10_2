class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table   :companies do |t|
      t.string     :name
      t.string     :inn
      t.string     :address
      t.text       :bio
      t.integer    :role, null: false, default: 1
      t.boolean    :active, default: true
      t.boolean    :confirmed, default: false
      t.numeric    :score, default: 0
      t.string     :company_slug, null: false, unique: true
      t.string     :slug, null: false, unique: true
      t.string     :secret_key, null: false, unique: true
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
