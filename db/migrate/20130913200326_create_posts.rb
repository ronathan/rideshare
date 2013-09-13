class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.decimal :price
      t.string :image_url
      t.string :depart_from
      t.string :depart_to
      t.datetime :departure_time
      t.references :user, index: true
      t.references :city, index: true

      t.timestamps
    end
  end
end
