class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.integer :id
      t.references :user_id
      t.references :expense_id

      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end
