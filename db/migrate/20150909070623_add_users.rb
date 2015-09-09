#  migration for users table
class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :avatar
      t.string :password_digest
      t.datetime :current_sign_in_at
      t.string :last_sign_in_ip

      t.timestamps null: false
    end
  end
end
