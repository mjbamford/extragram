class AddImageFilenameToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :image_filename, :string
  end
end
