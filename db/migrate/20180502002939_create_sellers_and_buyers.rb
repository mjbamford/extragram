class CreateSellersAndBuyers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :rating
      t.string :token
    end

    create_table :buyers do |t|
      t.string :rating
      t.string :token
    end

    create_join_table :buyers, :sellers
  end
end
