class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.string :address
      t.float :longitude
      t.float :latitude
      t.references :users, foreign_key: true
      t.references :categories, foreign_key: true

      t.timestamps
    end
  end
end
