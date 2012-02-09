class CreateCompletedReports < ActiveRecord::Migration
  def self.up
    create_table :completed_reports do |t|
      t.column :case_id, :integer
      t.column :last_printed, :datetime
      t.column :filename, :string 
      t.timestamps
    end
  end

  def self.down
    drop_table :completed_reports
  end
end
