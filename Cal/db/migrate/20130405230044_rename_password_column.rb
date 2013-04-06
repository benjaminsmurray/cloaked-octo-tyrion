class RenamePasswordColumn < ActiveRecord::Migration
  def up
  end
  def change
    rename_column :users, :password, :password_digest
  end
  def down
  end
end
