class CreateFollowings < ActiveRecord::Migration[5.2]
  def change
    create_table :followings do |t|
      t.references :user
      t.references :follower
      t.timestamps
    end
  end
end
