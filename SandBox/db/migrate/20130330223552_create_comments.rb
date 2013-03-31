class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :msg
      t.references :welcome_page

      t.timestamps
    end
    add_index :comments, :welcome_page_id
  end
end
