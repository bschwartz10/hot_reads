class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :url
      t.integer :count, default: 1
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
