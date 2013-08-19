class AddZombieToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :zombie, :string
  end
end
