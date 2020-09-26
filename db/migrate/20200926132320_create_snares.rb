class CreateSnares < ActiveRecord::Migration[6.0]
  def change
    create_table :snares do |t|
      t.string :name
      t.string :category
      t.string :image_url

      t.timestamps
    end
  end
end
