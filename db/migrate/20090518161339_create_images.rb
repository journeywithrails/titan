class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.column :case_id, :integer
      t.column :dictated_by, :string
      t.column :assigned_transciptionist, :text
      t.column :transcribed_text, :text
      t.column :transcription_assigned_time, :datetime
      t.column :transcription_completed_time, :datetime
         
      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
