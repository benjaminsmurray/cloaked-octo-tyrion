class CreateMyeventshandlers < ActiveRecord::Migration
  def change
    create_table :myeventshandlers do |t|
      t.string :username
      t.string :eventid
      t.timestamps
    end
  end
end
