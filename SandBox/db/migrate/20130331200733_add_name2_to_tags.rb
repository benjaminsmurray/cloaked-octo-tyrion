class AddName2ToTags < ActiveRecord::Migration
  def change
    add_column :tags, :name2, :string
  end
end
