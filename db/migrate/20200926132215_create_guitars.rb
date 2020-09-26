class CreateGuitars < ActiveRecord::Migration[6.0]
  def change
    create_table :guitars do |t|
      t.string :name
      t.string :strings
      t.string :image_url

      t.timestamps
    end
  end
end
