class AddTimestampsToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :t.datetime ${"created_at"}
    ${"updated_at"}
  end
end
