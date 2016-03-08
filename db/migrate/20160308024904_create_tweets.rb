class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.references :user_id, index: true, foreign_key: true
      t.string :message

      t.timestamps null: false
    end
  end
end
