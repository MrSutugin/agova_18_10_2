class Init < ActiveRecord::Migration[7.0]
  def change

    create_table :categories do |t|
      t.string   :name
      t.text     :description
      t.string   :slug
      t.string   :ancestry

      t.timestamps
    end

    # Country
    create_table    :countries do |t|
      t.string      :name
      t.string      :latitude
      t.string      :longitude

      t.timestamps
    end

    # Region
    create_table    :regions do |t|
      t.string      :name
      t.string      :latitude
      t.string      :longitude
      t.references  :country, null: false, foreign_key: true

      t.timestamps
    end

    # Municipality
    create_table    :municipalities do |t|
      t.string      :name
      t.string      :latitude
      t.string      :longitude
      t.references  :region, null: false, foreign_key: true

      t.timestamps
    end

    # Settlement
    create_table    :settlements do |t|
      t.string      :name
      t.string      :addressshort
      t.string      :address
      t.numeric     :population
      t.numeric     :children
      t.numeric     :oktmo
      t.string      :latitude
      t.string      :longitude
      t.references  :municipality, null: false, foreign_key: true

      t.timestamps
    end

    add_index :categories, :ancestry
  end
end