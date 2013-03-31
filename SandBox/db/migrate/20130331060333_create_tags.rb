class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :welcome_page

      t.timestamps
    end
    add_index :tags, :welcome_page_id
  end
end
