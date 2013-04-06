class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :owner
      t.string :name
      t.date :when_date
      t.time :when_time
      t.string :place
      t.string :descr

      t.timestamps
    end
  end
end
