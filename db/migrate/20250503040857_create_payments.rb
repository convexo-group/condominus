class CreatePayments < ActiveRecord::Migration[8.0]
  def change
    create_table :payments do |t|
      t.references :lease, null: false, foreign_key: true
      t.references :tenant, null: false, foreign_key: true
      t.decimal :amount
      t.date :paid_on

      t.timestamps
    end
  end
end
