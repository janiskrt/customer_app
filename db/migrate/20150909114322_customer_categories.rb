# database migrations to create customer categories table
class CustomerCategories < ActiveRecord::Migration
  def change
    create_table :customer_categories do |t|
      t.integer :category_id
      t.integer :customer_id

      t.timestamps null: false
    end
  end
end
