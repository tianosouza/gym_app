class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :password_confirmation
      t.string :role, default: "user"

      t.timestamps
    end

    add_index :users, :email, unique: true
    add_index :users, :username, unique: true
  end
end
