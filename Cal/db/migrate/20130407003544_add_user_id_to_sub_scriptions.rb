class AddUserIdToSubScriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :user_id, :integer
    remove_column :subscriptions, :owner_name
  end
end
