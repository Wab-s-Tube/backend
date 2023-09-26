class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :file_name
      t.integer :size
      t.integer :duration
      t.string :mime_type
      t.string :string

      t.timestamps
    end
  end
end
