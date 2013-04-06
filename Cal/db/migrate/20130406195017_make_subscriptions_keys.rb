class MakeSubscriptionsKeys < ActiveRecord::Migration
  def up
  end
  def change
    add_index :subscriptions, [:owner,:username], :unique => true
  end
  def down
  end
end
