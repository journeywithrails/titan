class CreateDiagnosisTypes < ActiveRecord::Migration
  def self.up
    create_table :diagnosis_types do |t|
      t.column :name, :string
       t.column :description, :text      
      t.timestamps
    end
  end

  def self.down
    drop_table :diagnosis_types
  end
end
