class MakeUsernameIndex < ActiveRecord::Migration
  def up
  end

  def down
  end
  def change
    add_column :users, :username, unique:true
  end
end
