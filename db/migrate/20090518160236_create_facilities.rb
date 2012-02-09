class CreateFacilities < ActiveRecord::Migration
  def self.up
    create_table :facilities do |t|
      t.column :name, :string
      t.column :address, :text
      t.column :city, :string
      t.column :state, :string
      t.column :zip_code, :string
      t.column :phone, :integer
      t.column :fax, :integer
      t.column :facility_type_id, :integer
      t.column :notes, :integer      
      t.timestamps
    end
  end

  def self.down
    drop_table :facilities
  end
end
