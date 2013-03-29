class AddTitleToWelcomePages < ActiveRecord::Migration
  def change
    add_column :welcome_pages, :title, :string
  end
end
