class DropTableSubscriptions < ActiveRecord::Migration
  def up
  end
  def change
    drop_table :subscriptions
  end

  def down
  end
end
