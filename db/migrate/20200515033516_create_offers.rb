class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :advertiser_name
      t.string :url
      t.string :description
      t.date :starts_at
      t.date :ends_at
      t.boolean :premium

      t.timestamps
    end
  end
end
