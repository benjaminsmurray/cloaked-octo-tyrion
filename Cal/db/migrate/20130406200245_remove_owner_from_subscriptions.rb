class RemoveOwnerFromSubscriptions < ActiveRecord::Migration
  def up
  end
  def change
  remove_column :subscriptions, :owner
  end
  def down
  end
end
