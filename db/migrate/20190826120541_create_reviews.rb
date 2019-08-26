class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.datetime :date
      t.integer :rating
      t.references :items, foreign_key: true

      t.timestamps
    end
  end
end
