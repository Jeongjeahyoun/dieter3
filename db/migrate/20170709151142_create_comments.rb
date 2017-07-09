class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      
      t.string "reply_writer"
      t.string "reply"
      t.integer "post_id"

      t.timestamps null: false
    end
  end
end
