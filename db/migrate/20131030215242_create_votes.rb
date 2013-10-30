class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :answer_id
      t.integer :voter_id
      t.integer :type

      t.timestamps
    end
  end
end
