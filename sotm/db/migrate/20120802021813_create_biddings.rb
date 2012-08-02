class CreateBiddings < ActiveRecord::Migration
  def change
    create_table :biddings do |t|
      t.string :name
      t.integer :price
      t.string :auction_uniq_id

      t.timestamps
    end
  end
end
