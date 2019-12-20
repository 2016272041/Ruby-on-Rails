class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.integer :testid
      t.string :testname
      t.string :testcreator
      t.timestamp :createdat
      t.timestamp :updatedat

      t.timestamps
    end
  end
end
