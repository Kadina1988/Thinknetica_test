class RemoveColumnFromAnswer < ActiveRecord::Migration[7.0]
  def change
    remove_column :answers, :body, :text
  end
end
