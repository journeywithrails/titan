# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090518192753) do

  create_table "accessioning_sites", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cases", :force => true do |t|
    t.integer  "case_number"
    t.integer  "patient_id"
    t.integer  "room_number"
    t.integer  "facility_id"
    t.integer  "physician_id"
    t.string   "accessionedby"
    t.string   "accessioned_fromIP"
    t.datetime "accession_time"
    t.datetime "pickup_time"
    t.datetime "received_time"
    t.datetime "gross_time"
    t.datetime "processor_time"
    t.datetime "embed_time"
    t.datetime "cut_time"
    t.datetime "stain_time"
    t.integer  "casetype_id"
    t.integer  "container_count"
    t.integer  "specimen_type_id"
    t.text     "specimen_source"
    t.integer  "gross_dictation_id"
    t.integer  "micro_dictation_id"
    t.integer  "path_test_id"
    t.text     "stains_ordered_ids"
    t.string   "files"
    t.text     "gross_dictation_transcription"
    t.text     "micro_dictation_transcription"
    t.text     "diagnosis_dictation_transcription"
    t.text     "pathology_tests"
    t.text     "diagnosis"
    t.string   "status"
    t.string   "stage"
    t.integer  "processing_lab_site_id"
    t.string   "assigned_pathologist"
    t.text     "bill_to"
    t.string   "subscriber_first_name"
    t.string   "subscriber_last_name"
    t.integer  "primary_insurance_id"
    t.integer  "secondary_insurance_id"
    t.integer  "primary_care_physician_id"
    t.integer  "medical_record_number"
    t.text     "cassette_numbers"
    t.text     "slide_numbers"
    t.text     "notes"
    t.text     "comments"
    t.integer  "completed_report_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "completed_reports", :force => true do |t|
    t.integer  "case_id"
    t.datetime "last_printed"
    t.string   "filename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", :force => true do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "diagnosis_dictations", :force => true do |t|
    t.integer  "case_id"
    t.string   "dictated_by"
    t.text     "assigned_transciptionist"
    t.text     "transcribed_text"
    t.datetime "transcription_assigned_time"
    t.datetime "transcription_completed_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diagnosis_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilities", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.integer  "phone"
    t.integer  "fax"
    t.integer  "facility_type_id"
    t.string  "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilities_physicians", :id => false, :force => true do |t|
    t.integer "facility_id"
    t.integer "physician_id"
  end

  create_table "facility_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gross_dictations", :force => true do |t|
    t.integer  "case_id"
    t.integer  "user_id"
    t.text     "assigned_transciptionist"
    t.text     "transcribed_text"
    t.datetime "transcription_assigned_time"
    t.datetime "transcription_completed_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.integer  "case_id"
    t.string   "dictated_by"
    t.text     "assigned_transciptionist"
    t.text     "transcribed_text"
    t.datetime "transcription_assigned_time"
    t.datetime "transcription_completed_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "insurances", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.integer  "phone"
    t.integer  "upin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "micro_dictations", :force => true do |t|
    t.integer  "case_id"
    t.string   "dictated_by"
    t.text     "assigned_transciptionist"
    t.text     "transcribed_text"
    t.datetime "transcription_assigned_time"
    t.datetime "transcription_completed_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "path_tests", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", :force => true do |t|
    t.string   "social_security"
    t.date     "date_of_birth"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_initial"
    t.string   "suffix"
    t.string   "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "physician_staff_members", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_initial"
    t.integer  "cell_phone"
    t.integer  "facility_id"
    t.integer  "physician_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "physicians", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_initial"
    t.integer  "cell_phone"
    t.integer  "route_id"
    t.text     "physician_staff_members"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "processing_lab_sites", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.integer  "phone"
    t.string   "subnet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "routes", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stains", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_salt"
    t.string   "password_hash"
    t.integer  "department_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
