class CreateExpenses < ActiveRecord::Migration
  def self.up
    create_table :expenses do |t|
      t.integer :id
      t.references :user_id
      t.string :description
      t.float :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :expenses
  end
end
