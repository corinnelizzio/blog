class AddDateToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :date, :integer
  end
end
