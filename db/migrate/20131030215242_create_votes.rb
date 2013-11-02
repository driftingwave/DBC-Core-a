class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :answer_id
      t.integer :user_id
      t.integer :vote_type

      t.timestamps
    end
  end
end




















