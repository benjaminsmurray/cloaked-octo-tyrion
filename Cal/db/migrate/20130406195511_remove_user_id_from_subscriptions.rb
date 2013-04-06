class RemoveUserIdFromSubscriptions < ActiveRecord::Migration
  def up
  end
  def change
    remove_column :subscriptions, :user_id
  end
  def down
  end
end
