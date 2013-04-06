class AddOwnerNameToSubscriptions < ActiveRecord::Migration
  def change
  add_column :subscriptions, :owner_name, :string
  end
end
