class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.text :title, null: false
      t.integer :level, null: false, default: 1
      t.string :author, null: false, default:'Aziev'
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
