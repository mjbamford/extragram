class AddSellerAttributesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :seller_rating, :string
    add_column :users, :seller_token, :string
  end
end
