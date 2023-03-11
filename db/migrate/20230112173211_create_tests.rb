class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.text :title, null: false
      t.integer :level, null: false, default: 1
      t.references :category, null: false, foreign_key: true
      t.references :author, foreign_key: { to_table: :users }, index: true

      t.timestamps
    end
  end
end
