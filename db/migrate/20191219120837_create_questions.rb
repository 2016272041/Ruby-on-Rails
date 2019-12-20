class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :quesid
      t.string :questions
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.string :answer

      t.timestamps
    end
  end
end
