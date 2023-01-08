class AddDefeultValueToShowAnswer < ActiveRecord::Migration[7.0]
  def up
    change_column :answers, :correct, :boolean, :default => true
  end

  def down
    change_column :answers, :correct, :boolean, :default => nil
  end
end
