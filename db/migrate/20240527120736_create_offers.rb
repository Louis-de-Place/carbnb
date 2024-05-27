class CreateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.integer :km
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
