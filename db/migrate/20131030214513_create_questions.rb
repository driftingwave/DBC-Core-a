class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :topic_id
      t.integer :creator_id
      t.text :body

      t.timestamps
    end
  end
end
