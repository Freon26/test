class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :full_name
      t.string :display_name
      t.string :crypted_password, default: nil
      t.string :salt,             default: nil
      t.boolean :orphan,          default: false

      t.timestamps
    end

    add_index :users, :email

  end
end
