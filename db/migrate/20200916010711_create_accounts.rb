class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.float :amount
      t.string :type
      t.string :interest
      t.string :float
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
