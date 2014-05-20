class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :content
      t.string :posted_on
		t.references :user #t.integer :user_id

      t.string :datetime
      t.timestamps
    end
  end
end
