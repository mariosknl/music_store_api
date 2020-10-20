# frozen_string_literal: true

class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :username

      t.timestamps
    end
  end
end
