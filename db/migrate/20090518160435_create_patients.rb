class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.column :social_security, :string
      t.column :date_of_birth, :date
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :middle_initial, :string
      t.column :suffix, :string
      t.column :sex, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :patients
  end
end
