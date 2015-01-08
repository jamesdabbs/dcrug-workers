class CreateCatRequests < ActiveRecord::Migration
  def change
    create_table :cat_requests do |t|
      t.integer :user_id
      t.string :link

      t.timestamps null: false
    end
  end
end
