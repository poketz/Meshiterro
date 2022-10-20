class ChangePostimageToPostImage < ActiveRecord::Migration[6.1]
  def change
    rename_table :postimages, :post_images
  end
end
