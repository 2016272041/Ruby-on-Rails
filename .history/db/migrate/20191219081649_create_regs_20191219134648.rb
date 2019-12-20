class CreateRegs < ActiveRecord::Migration[6.0]
  def change
    create_table :regs do |t|
      t.number :comp_id
      t.varchar :comp_name

      t.timestamps
    end
  end
end
