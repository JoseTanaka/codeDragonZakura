class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :body
      t.string :video_link
      t.integer :course_id

      t.timestamps
    end
  end
end
