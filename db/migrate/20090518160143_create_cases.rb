class CreateCases < ActiveRecord::Migration
  def self.up
    create_table :cases do |t|
      t.column :case_number, :integer
      t.column :patient_id,:integer
      t.column :room_number,:integer
      t.column :facility_id,:integer
      t.column :physician_id,:integer
      t.column :accessionedby,:string
      t.column :accessioned_fromIP,:string
      t.column :accession_time,:datetime
      t.column :pickup_time,:datetime
      t.column :received_time,:datetime
      t.column :gross_time,:datetime
      t.column :processor_time,:datetime
      t.column :embed_time,:datetime
      t.column :cut_time,:datetime
      t.column :stain_time,:datetime
      t.column :casetype_id,:integer
      t.column :container_count,:integer
      t.column :specimen_type_id,:integer
      t.column :specimen_source,:text
      t.column :gross_dictation_id,:integer
      t.column :micro_dictation_id,:integer
      t.column :path_test_id,:integer
      t.column :stains_ordered_ids,:text
      t.column :files,:string
      t.column :gross_dictation_transcription,:text
      t.column :micro_dictation_transcription,:text
      t.column :diagnosis_dictation_transcription,:text
      t.column :pathology_tests,:text
      t.column :diagnosis,:text
      t.column :status,:string
      t.column :stage ,:string 
      t.column :processing_lab_site_id,:integer
      t.column :assigned_pathologist,:string
      t.column :bill_to,:text
      t.column :subscriber_first_name,:string
      t.column :subscriber_last_name,:string
      t.column :primary_insurance_id,:integer
      t.column :secondary_insurance_id,:integer
      t.column :primary_care_physician_id,:integer
      t.column :medical_record_number,:integer
      t.column :cassette_numbers,:text
      t.column :slide_numbers,:text
      t.column :notes,:text
      t.column :comments,:text
      t.column :completed_report_id,:integer
      t.timestamps
    end
  end

  def self.down
    drop_table :cases
  end
end
