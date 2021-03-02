class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :photo_id
      t.integer :user_id
      t.datetime :date_time
      t.string :comment_text

      t.timestamps
    end
  end
end
