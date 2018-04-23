class RemoveImageFilenameFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :image_filename
  end
end
