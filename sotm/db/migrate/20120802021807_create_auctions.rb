class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :title
      t.text :description
      t.string :image_url_main
      t.string :image_url_sub
      t.string :winner
      t.datetime :start_at
      t.string :auction_uniq_id

      t.timestamps
    end
  end
end
