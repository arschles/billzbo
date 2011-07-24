class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.references :user
      t.references :expense

      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end