class AddOwenerToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :owner, :string
  end
end
