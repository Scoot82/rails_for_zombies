class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :zombie
      t.string :status

      t.timestamps
    end
  end
end
