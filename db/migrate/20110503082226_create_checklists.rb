class CreateChecklists < ActiveRecord::Migration
  def self.up
    create_table :checklists do |t|
      t.string :studentID
      t.string, :courseCode
      t.string, :year
      t.string, :semester
      t.string, :area
      t.string, :count
      t.string, :grade
      t.string, :approved
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :checklists
  end
end
