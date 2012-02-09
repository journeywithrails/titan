class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.column :name, :string      
    end
    execute "INSERT INTO roles( `name` )
VALUES (
'Pathologist'
), (
'Pathologist Assistant'
), (
'Histology Assistant'
), (
'Histologist'
), (
'Histology Supervisor'
), (
'Gross Assistant'
), (
'Gross Supervisor'
), (
'Transcriptionist'
), (
'TranscriptionistSupervisor'
), (
'Cytology Assistant'
), (
'Cytologist'
), (
'Cytology Supervisor'
), (
'Courier'
), (
'Courier Supervisor'
), (
'Cytology Supervisor'
), (
'Client Service'
), (
'Billing'
), (
'Billing Supervisor'
);"
   
  end

  def self.down
    drop_table :roles
  end
end
