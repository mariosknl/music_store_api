class CreateCymbals < ActiveRecord::Migration[6.0]
  def change
    create_table :cymbals do |t|
      t.string :name
      t.string :category
      t.string :image_url

      t.timestamps
    end
  end
end
