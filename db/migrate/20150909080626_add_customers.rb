# migration to create customers table with email, title and admin id
class AddCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :title
      t.string :email
      t.integer :admin_user_id

      t.timestamps null: false
    end
  end
end
