class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.text :body
      t.integer :user_id
      t.integer :vote_total

      t.timestamps
    end
  end
end
