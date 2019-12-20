class CreateRegs < ActiveRecord::Migration[6.0]
  def change
    create_table :regs do |t|
      t.integer :comp_id
      t.string :comp_name
      t.string :Service

      t.timestamps
    end
  end
end
