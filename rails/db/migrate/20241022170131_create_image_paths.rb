class CreateImagePaths < ActiveRecord::Migration[7.2]
  def change
    create_table :image_paths do |t|
      t.string :path, limit: 300
      t.timestamps
    end
    add_index :image_paths, :path, unique: true
  end
end
