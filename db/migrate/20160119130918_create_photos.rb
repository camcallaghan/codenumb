class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|

    	add_column :photos, :picture, :string
    	add_column :photos, :caption, :string
    	add_column :photos, :place_id, :integer


      t.timestamps
    end
  end
end
