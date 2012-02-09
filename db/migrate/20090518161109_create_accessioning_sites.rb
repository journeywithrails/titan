class CreateAccessioningSites < ActiveRecord::Migration
  def self.up
    create_table :accessioning_sites do |t|
      t.column :name, :string
      t.column :address, :text
      t.column :city, :string
      t.column :state, :string
      t.column :zipcode, :integer
      t.column :phone, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :accessioning_sites
  end
end
