class CreateFacilityTypes < ActiveRecord::Migration
  def self.up
    create_table :facility_types do |t|
      t.column :name, :string      
      t.timestamps
    end
    execute "INSERT INTO `facility_types` (`name`) VALUES ('Hospital'),('Clinic'),('Laboratory'),('Misc'),('privatepractice');"
  end

  def self.down
    drop_table :facility_types
  end
end
