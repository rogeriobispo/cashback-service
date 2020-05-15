class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :advertiser_name, null: false, unique: false
      t.string :url, null: false
      t.string :description, null: false, limit: 500
      t.date :starts_at, null: false
      t.date :ends_at
      t.boolean :premium

      t.timestamps
    end
  end
end
