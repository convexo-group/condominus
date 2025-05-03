class CreateLeases < ActiveRecord::Migration[8.0]
  def change
    create_table :leases do |t|
      t.references :unit, null: false, foreign_key: true
      t.references :tenant, null: false, foreign_key: true
      t.decimal :price
      t.integer :duration
      t.integer :due_day
      t.boolean :active

      t.timestamps
    end
  end
end
