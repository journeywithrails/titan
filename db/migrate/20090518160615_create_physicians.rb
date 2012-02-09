class CreatePhysicians < ActiveRecord::Migration
  def self.up
    create_table :physicians do |t|
      t.column :first_name, :string     
      t.column :last_name, :string       
      t.column :middle_initial, :string      
      t.column :cell_phone, :integer           
      t.column :route_id, :integer      
      t.column :physician_staff_members, :text          
      t.timestamps
    end
  end

  def self.down
    drop_table :physicians
  end
end
