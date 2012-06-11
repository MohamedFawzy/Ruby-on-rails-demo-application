class CreateMicrposts < ActiveRecord::Migration
  def change
    create_table :micrposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
