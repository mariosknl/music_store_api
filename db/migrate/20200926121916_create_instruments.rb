# frozen_string_literal: true

class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.references :instrumentable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
