class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.date :compiled_on

      t.timestamps
    end
  end
end
