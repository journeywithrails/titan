class CreatePathTests < ActiveRecord::Migration
  def self.up
    create_table :path_tests do |t|
      t.column :name, :string
      t.column :description, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :path_tests
  end
end
