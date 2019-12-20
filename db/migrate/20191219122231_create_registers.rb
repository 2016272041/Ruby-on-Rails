class CreateRegisters < ActiveRecord::Migration[6.0]
  def change
    create_table :registers do |t|
      t.integer :companyid
      t.string :companyname
      t.string :service
      t.string :email
      t.string :contact

      t.timestamps
    end
  end
end
