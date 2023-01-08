class AddDefaultValueToTable < ActiveRecord::Migration[7.0]
  def change
    change_column :tests, :level, :integer, :default => 1
  end
end
