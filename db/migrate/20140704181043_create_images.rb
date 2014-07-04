class CreateImages < ActiveRecord::Migration
  def up
    create_table :images do |t|
      t.belongs_to :article
    end
    add_attachment :images, :image
  end

  def down
    drop_table :images
    remove_attachment :images, :image
  end
end
