class AddImageToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :post, :image, :string
  end
end
