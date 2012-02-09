class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.column :email,:string
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :password_salt, :string
      t.column :password_hash, :string
      t.column :department_id, :integer
      t.column :role_id, :integer     
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
