class FacilitiesPhysicians < ActiveRecord::Migration
  def self.up
    create_table :facilities_physicians, :id => false do |t|      
      t.column :facility_id, :integer
      t.column :physician_id, :integer
    end
  end

  def self.down
    drop_table :facilities_physicians
  end
end
