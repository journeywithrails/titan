class CreateDepartments < ActiveRecord::Migration
  def self.up
    create_table :departments do |t|
      t.column :name, :string     
      t.column :description, :text,:null => true       
    end
    
    execute "INSERT INTO departments( `name` )
VALUES (
'Accessioning'
), (
'Gross'
), (
'Histology'
), (
'Cytology'
), (
'Pathology'
), (
'Courier'
), (
'Transcription'
), (
'Client Services'
), (
'Billing'
);"
  end

  def self.down
    drop_table :departments
  end
end
