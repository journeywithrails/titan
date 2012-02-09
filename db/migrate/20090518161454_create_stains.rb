class CreateStains < ActiveRecord::Migration
  def self.up
    create_table :stains do |t|
      t.column :name, :string
      t.column :description, :text 
      t.timestamps
    end
  end

  def self.down
    drop_table :stains
  end
end
