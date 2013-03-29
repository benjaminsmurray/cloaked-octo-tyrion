class CreateWelcomePages < ActiveRecord::Migration
  def change
    create_table :welcome_pages do |t|

      t.timestamps
    end
  end
end
