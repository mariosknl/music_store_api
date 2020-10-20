# frozen_string_literal: true

class CreateGuests < ActiveRecord::Migration[6.0]
  def change
    create_table :guests do |t|
      t.string :username

      t.timestamps
    end
  end
end
