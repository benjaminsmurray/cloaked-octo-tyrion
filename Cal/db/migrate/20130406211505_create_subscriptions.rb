class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :owner_name
      t.string :username

      t.timestamps
    end
  end
end
