class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.text :body, null: false
      t.boolean :correct, null: false, default: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
