class CreatePhysicianStaffMembers < ActiveRecord::Migration
  def self.up
    create_table :physician_staff_members do |t|
      t.column :first_name, :string     
      t.column :last_name, :string       
      t.column :middle_initial, :string      
      t.column :cell_phone, :integer      
      t.column :facility_id, :integer      
      t.column :physician_id, :integer      
      t.timestamps
    end
  end

  def self.down
    drop_table :physician_staff_members
  end
end
