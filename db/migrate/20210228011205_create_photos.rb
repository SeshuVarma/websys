class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.datetime :date_time
      t.string :file_name

      t.timestamps
    end
  end
end
