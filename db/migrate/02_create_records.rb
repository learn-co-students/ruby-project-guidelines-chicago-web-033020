class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.integer :student_id
      t.integer :course_id
      t.string :course_name
      t.string :grade
      t.string :semester
    end
  end
end
