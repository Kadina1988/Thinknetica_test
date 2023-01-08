class AddDefaultValueToAnswer < ActiveRecord::Migration[7.0]
  def change
    add_column :answers, :correct, :boolean, :default => true
  end
end
