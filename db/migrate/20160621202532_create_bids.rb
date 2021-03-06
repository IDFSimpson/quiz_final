class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.date :bid_date
      t.float :offer_price
      t.float :current_price
      t.references :auction, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
